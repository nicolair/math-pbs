settings.outformat = "pdf";
import graph;
size(7cm);

//import graph;
//size(200);

real f(real x){ return x^3 + x;};
real ff(real X, real t){ return t^3+t+(X-t)*(3t^2+1);};
real v = 1.8, vm = -0.2, x = 1.1;

pen pp = dashed;
pen Crouge=red+1;
pen Cbleu=blue+1;

axes(EndArrow);
draw((vm,vm)--(v,v),pp);
draw((vm,x)--(v,x),pp);
draw((x,0)--(x,f(1.2)),pp);

guide C= graph(f,vm,1.2);
draw(C,Crouge);
draw((0.5,ff(0.5,x))--(1.2,ff(1.2,x)),Cbleu);


label("$\mathcal C$",(0.1,0.3));
label("$x$",(x,0),NE);
label("$x$",(0,x),NE);

label("$(u_1(x),x)$",(x+0.5,x-0.5),SE);
draw((x+0.5,x-0.5)--(0.83,x),Arrow);

label("$(g(x),x)$",(0.35,x+1.15));
draw((0.2,x+1)--(0.72,x),Arrow);