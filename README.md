# ARM 32-bit
- Docker file have essential dependency to run the assembly codes

## Docker Build
#### ./build_docker.bash

``` bash
docker build -t arm32-bit-assembly-coding-dev .
```
## Docker Container Start
#### ./start_container.bash
- Change this bash script w.r to your directory
- $WORKSPACE -> code directory
```bash
docker run --restart always -d --name arm32-dev-container --network host -it -v $WORKSPACE:/home/workspace arm32-bit-assembly-coding-dev
```

## Docker Container Execute -> use this for Every time in terminal
### ./run_container.bash
```bash
docker exec -it arm32-dev-container bash
```

### Outside Docker for Development
```bash
## Mac OS
brew install pre-commit
              brew install arm-none-eabi-gcc w

## Ubuntu
sudo apt install -y gcc-arm-none-eabi

pre-commit install
```
## Execute the code 
src/RUN_ASSEMBLY.md
:ex 
