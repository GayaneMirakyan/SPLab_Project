#include <iostream>

int main() {
	int n = 10000, m = 10000, start = 2, finish = 9999;

	std::cout << n << " " << " " << m << " " << start << " " << finish << std::endl;
	int i;
	for(i = 1; i < m; ) {
		std::cout << i << " ";
	        i++;
		std::cout << i << " " << 1 << std::endl;	
	}
	std::cout << i << " " << 1 << " " << 1 << std::endl;
	return 0;
}
