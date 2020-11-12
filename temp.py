# processing the dataset
import os

DATADIR = "/home/yash/Desktop/NLP-Project/dataset"
CHUNKS = ["InterChunk", "IntraChunk"]
NOTATIONS = ["utf", "wx"]
TRAIN_A = ["conversation", "news_articles_and_heritage/Training"]
DEV_A = ["news_articles_and_heritage/Development", "news_articles_and_heritage/Testing"]
TEST_A = ["news_articles_and_heritage/Testing"]

# word mapping to category and gender
word_info = {}

# handle exceptions
exceptions = []
removed_words = set()

def prepare_sets(A):
    data = []
    for source in A:
        path = os.path.join(DATADIR, CHUNKS[0], NOTATIONS[0], source)

        for data_file in os.listdir(path):

            # print(data_file)
            try:
                f = open(os.path.join(path, data_file), "r")
            except:
                print("Can not open :" + os.path.join(path, data_file))
                break

            for line in f:

                cols = line.split("\t")
                if len(cols) < 6:
                    continue

                attributes = cols[5].split("|")
                gender = attributes[1].split("-")[1]
                word = cols[1]
                category = cols[4]

                # multiple gender or no gender
                if word in removed_words:
                    continue

                # if gender is not specified
                if not gender:
                    # exceptions.append([word, [category, gender]])
                    removed_words.add(gender)
                    continue

                if word in word_info:
                    # different [category, gender]
                    if word_info[word][1] != gender:
                        exceptions.append([word, word_info[word]])
                        exceptions.append([word, [category, gender]])
                        word_info.pop(word)
                        removed_words.add(word)
                    continue

                word_info[word] = [category, gender]

                if gender not in ["m", "f", "any"]:
                    continue

                chars = ""
                for c in word:
                    chars += c
                    chars += " "
                chars = chars[:-1]

                # add to the data
                data.append([chars, gender])
                
    return data


training_data = prepare_sets(TRAIN_A)
print(len(training_data))
test_data = prepare_sets(DEV_A)
print(len(test_data))
# pred_data = prepare_sets(TEST_A)
# print(len(pred_data))
