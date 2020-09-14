size(9cm);

int n=5;

draw((-2,-4)--(2,-2)--(3,1)--(3,2)--(4,3)--(-1,4)--(-5,-1)--cycle,olive+1);

for(int i=-n; i<=n; ++i){
  for(int j=-n; j<=n; ++j){
    dot((i,j),deepgreen+4);
  }
}
