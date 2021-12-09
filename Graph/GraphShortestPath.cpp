#include <iostream>
#include <vector>
#include <queue>
#include <climits>
#include <utility>
#include <string>

std::vector<std::pair<int, int> > graph[10005];
int start, end, dist[10005];
std::vector<std::string> ways;

int find_shortest_length(int vertex) 
{
    bool visited[10005] = {false};
    std::priority_queue<std::pair<int, int> > q;
    q.push(std::make_pair(0, end));
    int best_value = INT_MAX, count = 0;
    
    while(!q.empty()) 
    {
        std::pair<int, int> p;
        p = q.top();
        q.pop();
        int way_value = -p.first;
        int node = p.second;
        if(count == vertex - 1 ) 
	{
            break;
        }
        if(visited[node]) 
	{
            continue;
	}
	visited[node] = true;
        count++;

        for(int i = 0; i < graph[node].size(); i++) 
	{
            int child = graph[node][i].first;
            int weight = graph[node][i].second;
            if(visited[child]) 
	    {
                continue;
            }
            if(child == start) 
	    {
                best_value = std::min(best_value, weight + dist[node]);
                continue;
            }
            if(dist[child] == 0 || dist[child] > dist[node] + weight) 
	    {
                dist[child] = dist[node] + weight;
                q.push(std::make_pair(-dist[child], child));
            }
        }
    }
    return best_value;
}

void create_pointers(std::string str, int parent, int current) 
{
    str += std::to_string(current);
    str += " ";
    if (current == end) 
    {
	ways.push_back(str);
	std::cout << str << std::endl;
        return;
    }
    for (int i = 0; i < graph[current].size(); ++i) 
    {
        int child = graph[current][i].first;
        int weight = graph[current][i].second;
	if (child == parent) 
	{
            continue;
        }
        if (weight + dist[child] == dist[current]) 
	{
            create_pointers(str, current, child);
	}
    }
}


int main() {
    int vertex, edge;
    std::cin >> vertex >> edge;
    std::cin >> start >> end;
	
    for(int i = 0; i < edge; i++)
    {
        int vertex1, vertex2, weight12;
        std::cin >> vertex1 >> vertex2 >> weight12;
		
        graph[vertex1].push_back(std::make_pair(vertex2, weight12));
        graph[vertex2].push_back(std::make_pair(vertex1, weight12));
    }
    if(start == end)
    {
        std::cout << "The shortest path length: 0" << std::endl;
	std::cout << "Path count: 1" << std::endl;
        std::cout << start << " " << std::endl;
	return 0;
    }

    int best_value = find_shortest_length(vertex);
    dist[start] = best_value;
    std::cout << "The shortest path length: ";
    std::cout << best_value << std::endl;
    create_pointers("", -1, start);
    std::cout << "Path count: " << ways.size();
	
    return 0;
}



