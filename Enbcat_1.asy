size(6cm);

int n=5;

for(int i=0; i<=n; ++i){
  draw((i,0)--(i,n));
  draw((0,i)--(n,i));
}

pair[] F={(0,0),(1,0),(1,1),(2,1),(2,2),(3,2),(4,2),(4,3),(4,4),(5,4),(5,5)};

for(int i=0; i<2*n; ++i){
  dot(F[i],darkgreen + 4);
  draw(F[i]--F[i+1],darkgreen+2,MidArrow);
}
dot(F[10]);