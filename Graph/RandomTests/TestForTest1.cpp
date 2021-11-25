#include <iostream>

int main()
{
    int n = 10000, m = 10000;
    int start, end, count;
    std::cin >> start >> end;
    if(start - end == 5000 || end - start == 5000)
    {
        std::cout << "The shortest path length: 5000" << std::endl;
	std::cout << "Path count: 2" << std::endl;
	int start_temp = start, end_temp = end;
	count = 5000;
	while(count)
	{
	    if(start_temp == 10000)
	    {
		std::cout << 10000 << " ";
	    }
	    else
	    {
                std::cout << start_temp % 10000 << " ";
	    }
	    count--;
	    start_temp++;
	}
	std::cout << end << " " << std::endl;
	count = 5000;
	start_temp = start;
        while(count)
	{
	    if(start_temp == 0)
	    {
                start_temp = 10000;
		std::cout << start_temp << " ";
	    }
	    else
	    {
                std::cout << start_temp << " ";
	    }
	    count--;
	    start_temp--;
	}	
	std::cout << end << " " << std::endl;
    }
    else 
    {
	if(start > end && start - end < 5000)
	{
	    std::cout << "The shortest path length: " << start - end << std::endl;
            std::cout << "Path count: 1" << std::endl;

	    while(start != end)
	    {
	        std::cout << start << " ";
		start--;
	    }
	    std::cout << end << " " << std::endl;
	}
	else if(end > start && end - start < 5000)
	{
	    std::cout << "The shortest path length: " << end - start << std::endl;
            std::cout << "Path count: 1" << std::endl;

	    while(end != start) 
	    {
	        std::cout << start << " ";
		start++;;
	    }
	    std::cout << end << " " << std::endl;
	}
	else if(start > end && start - end > 5000) 
	{
	     count = 10000 - start + end;
	     std::cout << "The shortest path length: " << count << std::endl;
             std::cout << "Path count: 1" << std::endl;
 
	     while(count)
            {
		if(start == 10000)
		{
		    std::cout << 10000 << " ";
		}
		else
		{
		    std::cout << start % 10000 << " ";
		}
		start++;
		count--;
            }
            std::cout << end << " " << std::endl;
	}
	else if(end > start && end - start > 5000)
	{
	    count = 10000 + start - end;
	    std::cout << "The shortest path length: " << count << std::endl;
            std::cout << "Path count: 1" << std::endl;

             while(count)
            {
                if(start == 0)
                {
                    std::cout << 10000 << " ";
		    start = 10000;
                }
                else
                {
                    std::cout << start % 10000 << " ";
                }
                start--;
                count--;
            }
            std::cout << end << " " << std::endl;

	}
    }

}
