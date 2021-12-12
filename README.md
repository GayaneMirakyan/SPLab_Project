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
### **Graph project tree**

.
 * [build.sh](./Graph/build.sh)
 * [clean.sh](./Graph/clean.sh)
 * [GraphShortestPath.cpp](./Graph/GraphShortestPath.cpp)
 * [RandomTests](./Graph/RandomTests)
   * [randomNum.cpp](./Graph/RandomTests/randomNum.cpp)
   * [build_Graph.sh](./Graph/RandomTests/build_Graph.sh)
   * [clean_Graph.sh](./Graph/RandomTests/clean_Graph.sh)
   * [run_Graph.sh](./Graph/RandomTests/run_Graph.sh)
   * [Test1](./Graph/RandomTests/Test1)
     * [TestRandom1.cpp](./Graph/RandomTests/Test1/TestRandom1.cpp)
     * [cleanTest1.sh](./Graph/RandomTests/Test1/cleanTest1.sh)
     * [TestForTest1.cpp](./Graph/RandomTests/Test1/TestForTest1.cpp)
     * [runTest1.sh](./Graph/RandomTests/Test1/runTest1.sh)
     * [buildForTest1.sh](./Graph/RandomTests/Test1/buildForTest1.sh)
   * [Test2](./Graph/RandomTests/Test2)
   * [TestRandom2.cpp](./Graph/RandomTests/Test2/TestRandom2.cpp)
   * [cleanTest2.sh](./Graph/RandomTests/Test2/cleanTest2.sh)
   * [runTest2.sh](./Graph/RandomTests/Test2/runTest2.sh)
   * [TestForTest2.cpp](./Graph/RandomTests/Test2/TestForTest2.cpp)
   * [buildForTest2.sh](./Graph/RandomTests/Test2/buildForTest2.sh)
 * [Tests](./Graph/Tests)
   * [run_test.sh](./Graph/Tests/run_test.sh)
   * [test1.cpp](./Graph/Tests/test1.cpp)
   * [test2.cpp](./Graph/Tests/test2.cpp)
   * [output_test1.txt](./Graph/Tests/output_test1.txt)
   * [output_test2.txt](./Graph/Tests/output_test2.txt)


### **Graph project introduction**

	1) GraphShortestPath.cpp is for getting the shortest path in a graph, You can build and run it using ./run_Graph.sh, which is in RandomTests folder. You must give input count of vertexes and edges, start and end, after it each vertex with a weight
	2) I write two tests, which you can run using ./run_test.sh, which is in Tests folder
        * test1.cpp generate an input for first test, which is a circle of numbers, in this input start is 2 and end is 9999
			1->2->3->4->..........->9998->9999->10000->1
		* test2.cpp generate an input for first test, which is a matrix of numbers, in this input start is 1 and end is 245
			1    2   .... 99   100
			101  102 .... 199  200
			....................
			9901 9902 ... 9999 10000
	3) build.sh script is for building GraphShortestPath.cpp, test1.cpp, test2.cpp files, and clean.sh is for cleaning after building.
	4) randomNum.cpp in RandomTests folder, is for generating random numbers, I use a C++ library (#include <random>).
	5) TestForTest1.cpp and TestForTest2.cpp are tests for first and second examples in which start and end are random numbers.
	6) TestRandom1.cpp and TestRandom2.cpp are for generating input for first and second tests
	7) buildForTest1.sh (buildForTest2.sh) is for building and runTest1.sh (runTest2.sh) for running first (second) test with random numbers, You can run it using ./runTest1.sh (./runTest2.sh)
	8)using ./cleanTest1.sh (./cleanTest2.sh) You cal clean after building
