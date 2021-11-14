#include <iostream>

int main() {
        int n = 10000, m = 99 * 200, start = 1, finish = 9001;

        std::cout << n << " " << " " << m << " " << start << " " << finish << std::endl;
        int i;
        for(i = 1; i < n - 100; i++) {
                std::cout << i << " " << i + 1 << " " << 1 << std::endl;
                std::cout << i << " " << i+100 << " " << 1 << std::endl;
        }
        for(int i = 9001; i < n; i++)
            std::cout << i << " " << i+1 << " " << 1 << std::endl;

        return 0;
}

