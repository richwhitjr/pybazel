import tensorflow as tf

print(tf.test.is_gpu_available())
print(tf.test.is_gpu_available(cuda_only=True))