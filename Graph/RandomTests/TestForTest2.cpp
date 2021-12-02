#include <iostream>
#include <cmath>
#include <string>
#include <vector>

std::vector<std::string> path;

void print_roads(int** matrix, std::string road, int ind_x, int ind_y, int finish, int finish_x, int finish_y, int u, int v)
{
    int current_node = matrix[ind_x][ind_y];
    if (current_node == finish)
    {
	road += " ";
	path.push_back(road);
        return;
    }
 if (ind_x < finish_x)
    {
        print_roads(matrix, road + " " + std::to_string(matrix[ind_x + u][ind_y]), ind_x + u, ind_y, finish, finish_x, finish_y, u, v);
    }
    else if (ind_x > finish_x)
    {
        print_roads(matrix, road + " " + std::to_string(matrix[ind_x + u][ind_y]), ind_x + u, ind_y, finish, finish_x, finish_y, u, v);
    }

    if (ind_y < finish_y)
    {
        print_roads(matrix, road + " " + std::to_string(matrix[ind_x][ind_y + v]), ind_x, ind_y + v, finish, finish_x, finish_y, u, v);
    }
    else if (ind_y > finish_y)
    {
        print_roads(matrix, road + " " + std::to_string(matrix[ind_x][ind_y + v]), ind_x, ind_y + v, finish, finish_x, finish_y, u, v);
    }
}



int main()
{
    int start, end;
    std::cin >> start >> end;

    int a = start, b = end;
    int dist = 0, a_i = 0, a_j = 0, b_i = 0, b_j = 0;

    if(a % 100 == 0)
    {
        a_j = 100;
        a_i = (a / 100) % 100 - 1;
    }
    else
    {
        a_j = a % 100;
        a_i = (a / 100) % 100;
    }
    if(b % 100 == 0)
    {
        b_j = 100;
        b_i = (b / 100) % 100 - 1;
    }
    else
    {
        b_j = b % 100;
        b_i = (b / 100) % 100;
    }
    dist = abs(a_i - b_i) + abs(a_j - b_j);
    std::cout << "The shortest path length: " << dist << std::endl;

    int** matrix = new int* [105];
    int num = 0;
    for(int i = 0; i <= 99; i++)
    {
	matrix[i] = new int[105];
        for(int j = 1; j <= 100; j++)
        {
            num++;
            matrix[i][j] = num;
        }
    }

     std::string road = std::to_string(matrix[a_i][a_j]);

    if(a_i >= b_i && a_j <= b_j)
    {
        int u = -1, v = 1;
        print_roads(matrix, road, a_i, a_j, matrix[b_i][b_j], b_i, b_j, u, v);

    }
    else if(a_i <= b_i && a_j <= b_j)
    {
	int u = 1, v = 1;
        print_roads(matrix, road, a_i, a_j, matrix[b_i][b_j], b_i, b_j, u, v);
    }
    else if(b_i >= a_i && b_j <= a_j)
    {
        int u = 1, v = -1;
        print_roads(matrix, road, a_i, a_j, matrix[b_i][b_j], b_i, b_j, u, v);

    }
    else if(a_i >= b_i && b_j <= a_j)
    {
        int u = -1, v = -1;
        print_roads(matrix, road, a_i, a_j, matrix[b_i][b_j], b_i, b_j, u, v);

    }
    int count = path.size();
    std::cout << "Path count: " << count << std::endl;

    for(int i = 0; i < path.size(); i++)
    {
        std::cout << path[i] << std::endl;
    }

     for(int i = 0; i <= 99; i++)
    {
        delete [] matrix[i];
    }
     delete [] matrix;

    return 0;
}
