# Build linux kernel
- This repo allow you to compile the linux-kernel using your own `.config` for make
- The build takes place inside a docker container so you don't have to install build dependencies

# Building image
- get the source files
```bash
git clone https://github.com/clementdlg/build-linux-kernel
cd build-linux-kernel
```

- build the image
```bash
docker build -t kernel-build .
```

# Running the kernel build
### Syntax

**host-dir** : the directory where you want the kernel to be written

**kernel-version** : the version that you want to compile
```bash
docker run --rm -v <host-dir>:/shared kernel-build <kernel-version>
```

### Example
```bash
docker run --rm -v ./shared/:/shared kernel-build 6.13
```

# Using custom config file
- By default, the build config is set to `defconfig`. However, by placing a config file at `./shared/config`, you can build with a custom configuration
