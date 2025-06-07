# fxc2
A wine-runnable version of Microsofts Shader Compiler fxc

## container

The container image includes the wine runtime needed to run fxc2 from any container-capable x64 platform:


```bash
$ docker run --rm -v $PWD:/work -w /work chaserhkj/fxc2 -Fhvert.bin -T vs_3_0 -E vertexShader vert.hlsl

```

Credits to [scottyhardy](https://github.com/scottyhardy) for packaging of the [base wine package](https://github.com/scottyhardy/docker-wine)