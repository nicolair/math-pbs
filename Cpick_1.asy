size(7cm);

int n=5;

draw((-2,-4)--(2,-2)--(3,1)--(3,2)--(4,3)--(-1,4)--(-5,-1)--cycle,olive+1);

draw((-1,4)--(-2,-4),red+1);
draw((-1,4)--(2,-2),red+1);
draw((-1,4)--(3,1),red+1);
draw((-1,4)--(3,2),red+1);

for(int i=-n; i<=n; ++i){
  for(int j=-n; j<=n; ++j){
    dot((i,j),deepgreen+4);
  }
}
