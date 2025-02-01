# Build linux kernel
- This repo allow you to compile the linux-kernel using your own `.config` for make
- The build takes place inside a docker container so you don't have to install build dependencies
# Usage
## Building image
- get the source files
```bash
git clone https://github.com/clementdlg/build-linux-kernel
cd build-linux-kernel
```

- build the image
**Warning** : you must have a `config` file next you the `Dockerfile`. You can use the default make config or your distro's config
```bash
docker build -t kernel-build .
```

## Running the build
- syntax :
	- **host-dir** : the directory where you want the kernel to be written
	- **kernel-version** : the version that you want to compile
```bash
docker run -v <host-dir>:/output kernel-build <kernel-version>
```

### example
```bash
docker run -v /tmp/output/:/output kernel-build 6.13
```
