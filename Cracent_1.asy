settings.outformat = "pdf";
//import graph;
size(8cm);

pen Vert = deepgreen +1;

int n = 10;
for(int i=1; i <= n; ++i ){
  dot((i,0));
}
draw((0,0)--(n,0),Vert);

real x = 1.6;
real y = n - 0.6;

dot((x,0), red+3);
dot((y,0), red+3);

label("$x$",(x,0),S);
label("$y$",(y,0),S);

label("$\lfloor x \rfloor$",(1,0),N);
label("$\lceil y \rceil$",(n,0),N);

real h = -0.8;
draw((2,h)--(n-1,h),Arrows);
