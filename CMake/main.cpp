#include "factorial.h"
#include <string>
#include <cctype>

bool check_number(std::string str) {
	for (int i = 0; i < str.length(); i++)
		if (isdigit(str[i]) == false)
			return false;
	return true;
}

int main() {
	std::string n;
	std::cout << "Enter any Number: ";
	std::cin >> n;
	unsigned int size = 0, number = 0;
	if (check_number(n)) {
		while (size != n.length()) {
			number *= 10;
			number += n[size]-48;
			size++;
		}
	}
	else{
		std::cout << "Input must be int." << std::endl;
		return 0;
	}

	if (number >= 0 && number <= 12)
		std::cout << "Factorial of " << number << " is: " << Factorial(number) << std::endl;
	else
		std::cout << "Out of range.";
}

