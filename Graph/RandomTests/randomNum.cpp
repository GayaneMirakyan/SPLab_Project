#include <iostream>
#include <ctime>

int main()
{
    time_t x = time(nullptr);
    time_t temp = time(nullptr);
    int i = -1;
    for(int count = 0; count <= temp % 2; count++ )
    {
        i*=-1;
    }
    time_t y = x + i * temp % 400;

    std::cout << x % 10000 << " " << y % 10000 << std::endl;
}
