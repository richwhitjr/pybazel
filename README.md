# Setup

Install [Bazelisk](https://bazel.build/install/bazelisk).

Install [Docker](https://docs.docker.com/engine/install/).

## Cuda

Make sure you have Cuda 11.1+ isntalled.

## Cuda Tensorflow

Unlike Pytorch, tensorflow does not statically link cuda if you want to use GPUs.  The easiest way
to link the cuda libs necessary for tensorflow is to install them as recommended in the tf [docs.](https://www.tensorflow.org/install/pip).

```bash
conda install -c conda-forge cudatoolkit=11.2 cudnn=8.1.0
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CONDA_PREFIX/lib/
```

After this you should be able to run the tensorflow example to see GPUs available:

```bash
bazelisk run //projects/tensorflow:main
```

# Examples

## Check GPU

```bash
bazelisk run //projects/torch:main
```

## Run MNIST Training

```bash
bazelisk run //projects/mnist:main
```

## Run Example Hello

```bash
bazelisk run //projects/hello:main
```

# Tests

```bash
bazelisk test //...
```

# Lint

```bash
./build/lint.sh
```

# Docker Run

Install image locally and run on cpu

```
bazelisk run //projects/mnist:image
```

Run on GPUS.  Image needs to be installed first with above command.

```
docker run --gpus all bazel/projects/mnist:image
```
