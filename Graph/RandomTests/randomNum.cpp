#include <iostream>
#include <ctime>

int main()
{
    time_t x = time(nullptr);
    time_t y = x * 1202;
    std::cout << x%10000 << " " << y%10000 << std::endl;
}
