�	M�7�Q�@M�7�Q�@!M�7�Q�@	�Dbu��?�Dbu��?!�Dbu��?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$M�7�Q�@�h o��?A�aod>@YW]�jJ��?*	�n���M@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat	�3���?!kݩ,@@)��!�k�?1��E'��8@:Preprocessing2F
Iterator::Model�����?!���6D@)]S ���?1��ighu8@:Preprocessing2U
Iterator::Model::ParallelMapV2ɯb���?!⡿���/@)ɯb���?1⡿���/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate���aڇ?!�x%��3@)>����?1�h�E�,@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor̖��p�q?!�87p��@)̖��p�q?1�87p��@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipU�=ϟ6�?!#(j��M@)RE�*kk?1\�nvl@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice_��x�Zi?!�d�@)_��x�Zi?1�d�@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap���6ʊ?!��Fsm�5@)*Ŏơ~W?1Eo9�6@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 1.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9�Dbu��?#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�h o��?�h o��?!�h o��?      ��!       "      ��!       *      ��!       2	�aod>@�aod>@!�aod>@:      ��!       B      ��!       J	W]�jJ��?W]�jJ��?!W]�jJ��?R      ��!       Z	W]�jJ��?W]�jJ��?!W]�jJ��?JCPU_ONLYY�Dbu��?b Y      Y@qT"��Gd�?"�
device�Your program is NOT input-bound because only 1.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2I
=type.googleapis.com/tensorflow.profiler.GenericRecommendation
nono:
Refer to the TF2 Profiler FAQ2"CPU: B 