#include <iostream>

int main()
{
    int n = 10000, m = 19800, start = 1, finish = 245;

    std::cout << n << " " << m << " " << start << " " << finish << std::endl;
    int k = 99, s = 0;
    while(k){
        int i = s+1;
        for(i; i < 100+s; i++) 
	{
            std::cout << i << " " << i + 1 << " " << 1 << std::endl;
            std::cout << i << " " << i+100 << " " << 1 << std::endl;
        }
        s+=100;
        k--;
    }
    for(int i = 100; i < 10000; i+=100)
    {
        std::cout << i << " " << i+100 << " " << 1 << std::endl;
    }

    for( int i = 9901; i < n; i++) 
    {
        std::cout << i << " " << i+1 << " " << 1 << std::endl;
    }

    return 0;
}
