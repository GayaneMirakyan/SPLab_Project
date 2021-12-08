#include <iostream>
#include <ctime>
#include <cstdlib>
#include <stdlib.h>

int main()
{ 
    srand(time(0));
    int j = -1;
    int temp = rand()%10000;
    for(int count = 0; count <= temp % 2; count++ )
    {
        j*=-1;
    }
    int x = rand() % 10000;
    int y = x + j * temp % 400;
    std::cout << x  << " " << y % 10000 << std::endl;
    return 0;
}
