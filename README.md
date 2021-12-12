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
	GraphShortestPath.cpp is for getting the shortest path in a graph, You can build and run it using ./run_Graph.sh, which is in RandomTests folder
	You must give input count of vertexes and edges, start and end, after it each vertex with a weight
	I write two tests, which you can run using ./run_test.sh, which is in Tests folder
	build.sh script is for building GraphShortestPath.cpp, test1.cpp, test2.cpp files, and clean.sh is for cleaning after building.
	randomNum.cpp in RandomTests folder, is for generating random numbers.
	TestForTest1.cpp and TestForTest2.cpp are tests for first and second examples in which start and end are random numbers.
	TestRandom1.cpp and TestRandom2.cpp are for generating input for first and second tests
	buildForTest1.sh (buildForTest2.sh) is for building and runTest1.sh (runTest2.sh) for running first (second) test with random numbers, You can run it using ./runTest1.sh (./runTest2.sh)
	using ./cleanTest1.sh (./cleanTest2.sh) You cal clean after building