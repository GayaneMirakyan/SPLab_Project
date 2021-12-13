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

	1) GraphShortestPath.cpp is for getting the shortest path in a graph, You can build and run it using ./run_Graph.sh, which is in Tests folder. You must give input count of vertexes and edges, start and end, after it each vertex with a weight
	2) There is two type of graphs, circle and matrix

	Circle
		* buildCircle.sh is for building randomNum.cpp and all cpp files in Circle folder
		* cleanCircle.sh is for cleaning after building
		* TestForCircle.cpp is a test for circle
        	* CircleInput.cpp generate a random input for TestForCircle.cpp
			1->2->3->4->..........->9998->9999->10000->1

	Matrix
		* buildMatrix.sh is for building randomNum.cpp and all cpp files in Matrix folder
		* cleanMatrix.sh is for cleaning after building
		* TestForMatrix.cpp is a test for matrix
		* MatrixInput.cpp generate a random input for TestForMatrix.cpp
			1    2   .... 99   100
			101  102 .... 199  200
			....................
			9901 9902 ... 9999 10000
	3) randomNum.cpp is for generating random numbers
