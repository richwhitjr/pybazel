load("@deps//:requirements.bzl", "requirement")
load("@rules_python//python:defs.bzl", "py_binary", "py_test")
load("@io_bazel_rules_docker//python3:image.bzl", "py3_image")

def jupyter_notebook(name, notebook = None, data = [], deps = [], tags = [], **kwargs):
    if notebook:
        data = data + [notebook]

    py_binary(
        name = name,
        srcs = ["//tools/jupyter:jupyter.py"],
        main = "//tools/jupyter:jupyter.py",
        data = data,
        deps = depset(deps + [requirement("notebook")]).to_list(),
        tags = tags,
        **kwargs
    )

def jupyter_notebook_image(name, notebook = None, data = [], deps = [], tags = [], **kwargs):
    if notebook:
        data = data + [notebook]

    py3_image(
        name = name,
        srcs = ["//tools/jupyter:jupyter.py"],
        main = "//tools/jupyter:jupyter.py",
        data = data,
        deps = depset(deps + [requirement("notebook")]).to_list(),
        tags = tags,
        **kwargs
    )