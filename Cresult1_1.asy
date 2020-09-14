size(8cm);
import graph;
real f(real t){ return t^2 + t;};
real ff(real t){ return t^2-t+1;};

axes(min=(-1,-1), max=(8,8), arrow=Arrow);

 pen Crouge=red+1;

guide C= graph(f,ff,-2,2);
draw((f(-1.5),ff(-1.5))--(f(-1.3),ff(-1.3)),arrow=Arrow,Crouge);
draw((f(1),ff(1))--(f(1.2),ff(1.2)),arrow=Arrow,Crouge);
draw(C,Crouge);

draw((f(0.5)-0.9,ff(0.5))--(f(0.5)+0.9,ff(0.5)),arrow=Arrows,dashed);
draw((f(-0.5),ff(-0.5)-0.9)--(f(-0.5),ff(-0.5)+0.9),arrow=Arrows,dashed);

dot((f(0.5),ff(0.5)));
dot((f(-0.5),ff(-0.5)));

label("$\Gamma$",(f(-2)+0.4,ff(-2)-0.2));
label("$\gamma(\frac{1}{2})$",(f(0.5),ff(0.5)+0.6));
label("$\gamma(-\frac{1}{2})$",(f(-0.5)-0.7,ff(-0.5)));
