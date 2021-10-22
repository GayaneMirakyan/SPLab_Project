#include "factorial.h"

unsigned int Factorial(unsigned int number){
	unsigned int fact = 1;
	for(unsigned int i = 1; i <= number; i++){    
		fact = fact * i;    
  	}    
	return fact;
}
