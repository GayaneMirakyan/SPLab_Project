# SPLabProject
## 1. Scripts
	AllFileNames.sh prints all file names on given folder with subfolders.
	FileOrDirectory.sh prompts the user for a name of a file or directory and reports if it is a regular file, a directory.
	LinesCount.sh counts lines in file given in argument.
	ReverseNum.sh prints a number in reverse order.

## 2. CMake
This CMake folder build and link two C++ files, build.sh is an executable file, You can run it and it will build this Cmake file.

## 3. Test - this folder contains tests for scripts.
	TestForAllFileName.sh is for testing AllFileName.sh script.
	TestForFileOrDir.sh is for testing FileOrDirectory.sh script.
	TestForLinesCount.sh is for testing LinesCount.sh script.
	TestForReverseNum.sh is for testing ReverseNum.sh script.

## 4. Docker
	Dockerfile for building a Docker image, which will run all my scripts.

## 5. Graph
	GraphShortestPath.cpp is for getting the shortest path in a graph, you can build and run it using ./build.sh
	You must give input count of vertexes and ribs, start and end, after it each vertex with a weight
	I write two tests, which you can run using ./run_test.sh
