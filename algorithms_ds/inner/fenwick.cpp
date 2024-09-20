#include <bits/stdc++.h>

using namespace std;

const unsigned int MAX = 2e6;
int tree[MAX];

int f(int i) { return i | (i + 1); }
int g(int i) { return i & (i + 1); }

// Add x to some element 
void update(int index, int add)
{
	for (int i = index; i < 2e6; i = f(i)) tree[i] += add;
}

int query_to(int to)
{
	int total = 0;
	for (int i = to; i > 0; i = g(i) - 1) total += tree[i];
	return total;
}

int main()
{
	// Fill in the tree
	int length; cin >> length;
	for (int i = 0; i < length; i ++) 
	{
		int val; cin >> val;
		update(i, val);
	}

	int k, a, b;

	// Run queries
	cout << "\n\nMake as many range(0 f t) or update (1 index add) queries as you want!\n\n";
	for(;;)
	{
		cin >> k>> a >> b;
		if (k== 0) cout << query_to(b) - (a!=0?query_to(a):0) << endl;
     		else  update(a, b);
	}
}
