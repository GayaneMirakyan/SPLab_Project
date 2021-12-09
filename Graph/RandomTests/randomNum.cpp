#include <iostream>
#include <ctime>
#include <cstdlib>
#include <stdlib.h>

int main()
{   
    int x = 10000, y = 1;
    srand(time(NULL));
    while((x - y >= 400 || y - x >= 400) && x <= 10000 && y <= 10000)
    {
        int j = -1;
        int temp = rand()%400;
        for(int count = 0; count <= temp % 2; count++ )
        {
            j*=-1;
        }
        x = rand();
    
        while(temp % 400 >= x % 10000)
	{
            x = rand();
	}

        y = x % 10000 + j * temp % 400;
        x = x % 10000 + 1;
        y = y % 10000 + 1;

    }
    
    std::cout << x  << " " << y  << std::endl;
    return 0;
}
