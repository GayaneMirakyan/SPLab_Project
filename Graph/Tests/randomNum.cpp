#include <iostream>
#include <random>


int main()
{   
    
	
    std::random_device rd;
    std::mt19937 mt(rd());
    std::uniform_real_distribution<double> dist(1, 10000);

    int x = 10000, y = 1;
    while((x - y >= 400 || y - x >= 400) && x <= 10000 && y <= 10000)
    {
        int j = -1;
        int temp = int(dist(mt));
        for(int count = 0; count <= temp % 2; count++ )
        {
            j*=-1;
        }
        x = int(dist(mt));
    
        while(temp % 400 >= x % 10000)
	{
            x = int(dist(mt));
	}

        y = x % 10000 + j * temp % 400;
        x = x % 10000 + 1;
        y = y % 10000 + 1;

    }
    
    std::cout << x  << " " << y  << std::endl;
    return 0;
}
