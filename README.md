## Installing

1. Get xv6-riscv source code:

    ```bash
    git submodule init
    git submodule update
    ```

1. Build the docker container:

    ```bash
    docker build -t xv6 .
    ```

1. Initialize the docker container:

    ```bash
    docker run --name xv6 -v $(pwd)/xv6-riscv:/xv6-riscv -it xv6
    ```

1. To exit, exit the way you would normally exit `qemu`:

    ```bash
    ^a + c
    ```

For non-vim users `^` is Ctrl.

## Using the container

1. Make changes to the code.

1. Start the container:

    ```bash
    docker start -ia xv6
    ```

1. Once done with testing, exit out of qemu. If you accidently left the
continer running:

    ```bash
    docker stop xv6
    ```

    Make sure to start the container each time or your changes in code will not be
    reflected.
