# General

## Deployment type

Docker

## Image

Based on official Python image.

## Licence

Apache License 2.0

## Version

2.x

## Description

TensorFlow is an end-to-end open-source machine learning platform, providing an extensive range of tools, libraries and resources to enable the advancement of research, and the smooth development and deployment of machine learning applications.

TensorFlow provides a straightforward experience for building and training models, offering a wide range of abstractions, immediate model iteration, and easy debugging. Regardless of the platform and language used, TensorFlow also provides a simple and direct path to deployment onto desktop, mobile, web, and cloud environments. Researchers can utilize the framework to conduct robust experimentation with great speed and performance. Complex topologies can be created by controlling a wide range of flexible features, assisted by easy prototyping and fast debugging.

Tensorflow was designed and created by the Google Brain team for large-scale distributed training and numerical computation. It is based on a directed computational graph, in which nodes denote mathematical operations and edges denote the data flow between these nodes. This flow, alongside the multidimensional data arrays named tensors, gave the name of the framework. A distributed TensorFlow architecture is made up of master and worker services with kernel implementations, that include hundreds of operations written in C++.

As stated in the official documentation, TensorFlow is applicable in a wide range of fields, on many different architectures. It can be utilized in research, development and production systems, and ran on systems ranging from mobile devices to massive distributed systems with hundreds of nodes and computational devices. The framework provides programming interfaces for Python and C++, and developments for additional languages in the works.


# Deployment

A. General example:

```sh
docker run -d --rm \
        --name tensorflow \
        -e JUPYTER_PASSWORD=jupyterlab \
        -p 8888:8888 \
        -v $HOME/tensorflow/data:/tensorflow \
        digitbrain/bb-jupyter-tensorflow:latest
```

## Parameters

|Name|Value|Description|
|-|-|-|
|Port|`-p 8888:8888`|JupyterLab WebGUI|
|Volume|`$HOME/tensorflow/data:/tensorflow`|Persist tensorflow data|
|Env|`-e JUPYTER_PASSWORD=jupyterlab`|Define JupyterLab password|

## Testing

Direct your browser at: [http://\<HOST\>:8888](http://<HOST>:8888)

Run the example notebook at `/example/tensorflow.ipynb`.

# Authentication

The WebUIs are protected by password. The default password is "jupyterlab", which can be changed with `JUPYTER_PASSWORD` enviroment variable.

# Reference

https://www.tensorflow.org/guide

https://www.tensorflow.org/api_docs

https://jupyterlab.readthedocs.io/en/stable/

