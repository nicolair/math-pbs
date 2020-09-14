size(9cm);

int n=5;

draw((1,-1)--(4,2)--(4,4)--(2,4)--(1,3)--cycle,heavyblue+1);

draw((1,-1)--(1,3)--(-1,4)--(-2,2)--(-4,-2)--(-1,-2)--cycle,olive+1);

draw((1,-1)--(1,3),red+2);

for(int i=-n; i<=n; ++i){
  for(int j=-n+2; j<=n; ++j){
    dot((i,j),deepgreen+4);
  }
}
label("$\mathcal{P}_1$",(-1.5,0.5));
label("$\mathcal{P}_2$",(2.5,2.5));