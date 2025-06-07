FROM mstorsjo/llvm-mingw:latest AS builder

RUN mkdir -p /work

COPY Makefile fxc2.cpp dll/d3dcompiler_47.dll /work/

WORKDIR /work

RUN make x64

FROM scottyhardy/docker-wine:latest

COPY --from=builder /work/fxc2.exe /work/d3dcompiler_47.dll /wine_bin/

ENTRYPOINT ["/usr/bin/entrypoint", "wine", "/wine_bin/fxc2.exe"]


