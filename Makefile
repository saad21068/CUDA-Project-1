# IDIR=./
CXX = nvcc

.PHONY: all install data clean build run

all: data clean build run

install:
	sudo apt-get install libopencv-dev
	sudo apt-get install libboost-all-dev

build:
	nvcc ./src/main.cu -o ./bin/main.exe -L/usr/local/cuda/lib64 -L /usr/lib/x86_64-linux-gnu/ -I/usr/local/cuda/include `pkg-config --cflags --libs opencv4` -ccbin g++-9

run:
	./bin/main.exe "./data/textures/" "./data/output/"

data:
	curl -s https://sipi.usc.edu/database/textures.tar.gz | tar xvz -C ./data


clean:
	rm -f ./bin/main.exe

