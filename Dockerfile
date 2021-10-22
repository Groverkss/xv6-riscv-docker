FROM ubuntu:20.04

# Install required packages
RUN apt-get update && \
apt-get install -y --no-install-recommends ca-certificates git \
build-essential gdb-multiarch qemu-system-misc \ 
gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu gcc && \
# clean up the temp files
apt-get autoremove -y && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*

VOLUME ["/xv6-riscv"]
WORKDIR "/xv6-riscv"
ENTRYPOINT ["make", "qemu"]
