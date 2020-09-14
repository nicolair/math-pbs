size(7cm);
import graph;

pair u;
int n = 5;

axes((-n-1,-n-1),(n+1,n+1),EndArrow);

for(int i = -n ; i <= n; ++i) { 
  for(int j = -n ; j <= n; ++j) {
    u = (i , j);
    dot(u,darkgreen+5);
  }
}