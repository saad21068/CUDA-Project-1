## Project Description
This project demonstrates the efficient implementation of image blurring using CUDA. By leveraging advanced GPU computation capabilities, it handles large-scale image processing tasks with high efficiency. The primary focus is on optimizing the performance of image blurring operations, ensuring that the process is both fast and scalable.

## Key Features
# CUDA Integration: Utilizes CUDA to perform image blurring, significantly speeding up the computation compared to traditional CPU-based methods.
# Performance Optimization: Focuses on optimizing the performance of image blurring operations to handle large datasets efficiently.
# Comprehensive Toolset: Includes all necessary tools and instructions for building, running, and managing the project

## Prerequisites
- CUDA Toolkit installed
- libopencv
- libboost

## Directory Structure
- `.gitattributes`: Git configuration attributes.
- `.gitignore`: Git ignore file.
- `INSTALL`: Installation instructions.
- `LICENSE`: License information.
- `Makefile`: Makefile for building and managing the project.
- `bin`: Directory for compiled binaries.
- `data`: Directory for sample data.
- `include`: Header files.
- `src`: Source code files.

**Note**: I recommend using a Linux distribution such as Ubuntu for this project.

To install dependencies run:
```shell
make install
```
To download the test dataset run: the data is taken from the this website https://sipi.usc.edu/database/database.php?volume=textures and this command will download the .tar file of the images. 

**Note**: The ./data/input file will contain the unblurred texture.


```shell
make data
```

To build the executable run, This will generata an executbale file .exe in bin folder
```shell
make build
```

To run this executable using default arguments run:
```shell 
make run
```


To clean the built executable run:
```shell 
make clean
```
**Note**: The ./data/output will contains the blured texture files.

## Code Orientation

```bin/```
This folder contains main.exe after running the following command:
```shell
make build
```

```data/```
After running the following command the data folder will contain textures in the folder ./data/textures(Input Unblurred files).
```shell
make data
```
After running main.exe using the following command ./data/output will contain blurred texture files:
```shell
make run
```

```lib/```
There are no libraries. Everything is installed using sudo apt-get install.

```src/```
All source is in the src folder. It consists of a header file main.cuh and a code file main.cu.

```README.md```
This file should hold the description of the project so that anyone cloning or deciding if they want to clone this repository can understand its purpose to help with their decision.

```INSTALL```
To install libopencv and libboost on ubuntu do:
```shell
make install
```

```Makefile```
Makefile contains the make rules.

```run.sh```
There is no run.sh. Just use main.exe in the bin folder.
