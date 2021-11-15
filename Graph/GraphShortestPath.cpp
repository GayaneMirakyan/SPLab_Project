#include <iostream>
#include <vector>
#include <queue>
#include <climits>
#include <utility>

std::vector<std::pair<int, int> > graph[10005];
int start, finish, pointers[50000005], value[50000005], dist[10005];
std::vector<int> ways_end;

int create_pointers(int parent, int current, int current_id) {
	
	value[current_id] = current;
	if (current == finish) {
		ways_end.push_back(current_id);
		return current_id;
	}
	int idx = current_id;
	for (int i = 0; i < graph[current].size(); ++i) {
		int child = graph[current][i].first;
		int weight = graph[current][i].second;
		if (child == parent)
			continue;
		if (weight + dist[child] == dist[current]) {
			pointers[idx+1] = current_id;
			idx = create_pointers(current, child, idx+1);
		}
	}
	return idx;
}


int main() {

	int n, m;
	std::cin >> n >> m;
	std::cin >> start >> finish;
	
	for(int i = 0; i < m; i++) {
		int u, v, w;
		std::cin >> u >> v >> w;
		
		graph[u].push_back(std::make_pair(v, w));
		graph[v].push_back(std::make_pair(u, w));
	}

	bool visited[10005] = {false};
	std::priority_queue<std::pair<int, int> > q;
	q.push(std::make_pair(0, finish));
	int best_value = INT_MAX, count = 0;
	
	while(!q.empty()) {
		std::pair<int, int> p;
		p = q.top();
		q.pop();
		int way_value = -p.first;
		int node = p.second;
		if(count == n - 1 ) 
			break;
		if(visited[node])
			continue;
		visited[node] = true;
		count++;

		for(int i = 0; i < graph[node].size(); i++) {
			int child = graph[node][i].first;
			int weight = graph[node][i].second;
			if(visited[child])
				continue;
			if(child == start) {
				best_value = std::min(best_value, weight + dist[node]);
				continue;
			}
			if(dist[child] == 0 || dist[child] > dist[node] + weight) {
				dist[child] = dist[node] + weight;
				q.push(std::make_pair(-dist[child], child));
			}

		}
	}

	dist[start] = best_value;
	std::cout << "The shortest path value: ";
	std::cout << best_value << std::endl;
        create_pointers(-1, start, 1);
	std::cout << "Path count: ";
	std::cout << ways_end.size() << std::endl;
	
	for (int i = 0; i < ways_end.size(); ++i) {
		std::vector<int> way;
		int current_id = ways_end[i];
		while (pointers[current_id] != 0) {
			way.push_back(value[current_id]);
			current_id = pointers[current_id];
		}
		way.push_back(start);
		for (int j = way.size() - 1; j >= 0; --j)
			std::cout << way[j] << " ";
		std::cout << std::endl;
	}

	return 0;
}



