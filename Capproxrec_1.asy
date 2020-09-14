import graph;
size(200);
real f(real x){ return x^3 + x;};
real v=1.8;

pen pp = dashed;
pen Crouge=red+1;
pen Cbleu=blue+1;

axes("$x$","$y$",EndArrow);
draw((-v,-v)--(v,v),pp);

guide C= graph(f,-1,1);
draw(C,Crouge);

transform sym=reflect((-1,-1),(1,1));
guide G=sym*C;
draw(G,Cbleu);


label("$\mathcal C$",(.8,1.8));
label("graphe de $g$",(1.6,.5));