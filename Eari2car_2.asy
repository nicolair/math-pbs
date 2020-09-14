size(7cm);
import graph;

pair g;
int n = 10;
int p = 17;
int a = 4;
pair u = (1,a);

axes((-n-1,-n-1),(n+1,n+1),EndArrow);

for(int i = -n ; i <= n; ++i) { 
  for(int j = -n ; j <= n; ++j) {
    dot((i , j),palegreen);
  }
}

int x = 0;
int y = 0;
dot((x,y),darkgreen+5);
for(int i = 0 ; i <= n+1; ++i) {
  x = x + 1;
  if(x > n){
    x = x - p;
  }
  y = y + a;
  if(y > n){
    y = y - p;
  }
  dot((x,y),darkgreen+5);
  if(y-p > -n){
    dot((x,y-p),darkgreen+5);
  }
}

int x = 0;
int y = 0;
for(int i = 0 ; i <= n+1; ++i) {
  x = x - 1;
  if(x < -n){
    x = x + p;
  }
  y = y - a;
  if(y < -n){
    y = y + p;
  }
  dot((x,y),darkgreen+5);
  if(y+p < n){
    dot((x,y+p),darkgreen+5);
  }
}