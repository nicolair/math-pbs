import graph;
size(200,200,IgnoreAspect);

int n=10;
real H(real x){ return exp(-n*(x*log(x)+(1-x)*log(1-x)));};

pair[] pt=new pair[n];

guide polyg1;
for(int k=0; k<=n; ++k){
  real c=choose(n,k);
  real x= k/n;
  pt[k]=(x,c);
  write(pt[k]);
  polyg1 = polyg1--pt[k];
}

pen pp = dashed;
pen Crouge=red+2;
pen Cbleu=blue+1;

guide C= graph(H,0.01,0.99);
draw(C,Cbleu);

dot(polyg1,Crouge);
xaxis(Bottom,LeftTicks);
yaxis(Left,RightTicks);


//draw((-v,-v)--(v,v),pp);

//transform sym=reflect((-1,-1),(1,1));
//guide G=sym*C;
//draw(G,Cbleu);

//label("$\mathcal C$",(.8,1.8));
//label("graphe de $g$",(1.6,.5));