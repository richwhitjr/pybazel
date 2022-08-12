# Setup

Install [Bazelisk](https://bazel.build/install/bazelisk).

Install [Docker](https://docs.docker.com/engine/install/).

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
