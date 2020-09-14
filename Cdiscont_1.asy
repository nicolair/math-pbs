import graph;
size(12cm,0);

pen crayon = defaultpen;
pen GrosCrayon = crayon +1;
pen GrosCrayonRouge = red +1;
pen PetitCrayon = crayon +0.2;


real a = 1/sqrt(2);
real b = sqrt(2)-1;
real c = 1;
real f(real x){ return 2*floor(a*sqrt(x))-floor(b*sqrt(x))-floor(c*sqrt(x));};

real[] x = new real[6];
x[1] = 1;
x[2] = 2;
x[3] = 4;
x[4] = 1/(sqrt(2)-1)^2;
x[5] = 8;
x[6] = 9;

real eps = 0.08;
guide C0= graph(f,0,x[1]-eps);
guide C1= graph(f,x[1]+eps,x[2]-eps);
guide C2= graph(f,x[2]+eps,x[3]-eps);
guide C3= graph(f,x[3]+eps,x[4]-eps);
guide C4= graph(f,x[4]+eps,x[5]-eps);
guide C5= graph(f,x[5]+eps,x[6]-eps);
guide C6= graph(f,x[6]+eps,10);

draw((-0.2,0)--(10.5,0),Arrow);
draw((0,-1.8)--(0,1.8),Arrow);
label("$1$",(0,1),W);
label("$-1$",(0,-1),W);
dot((0,1)--(0,-1));
dot((x[2],0)--(x[3],0)--(x[4],0)--(x[5],0)--(x[6],0));

draw(C0,GrosCrayonRouge);draw(C1,GrosCrayonRouge);draw(C2,GrosCrayonRouge);
draw(C3,GrosCrayonRouge);draw(C4,GrosCrayonRouge);draw(C5,GrosCrayonRouge);
draw(C6,GrosCrayonRouge);
dot((x[1],f(x[1]))--(x[2],f(x[2]))--(x[3],f(x[3]))--(x[4],f(x[4]))--(x[5],f(x[5]))--(x[6],f(x[6])),filltype=FillDraw,GrosCrayonRouge);
dot((x[1],0)--(x[2],-1)--(x[3],1)--(x[4],0)--(x[5],-1)--(x[6],1),filltype=Draw,GrosCrayonRouge);

label("$1$",(x[1],-0.1),S);
label("$2$",(x[2],-0.1),S);
label("$4$",(x[3],-0.1),S);
label("$\frac{1}{(\sqrt(2)-1)^2}$",(x[4],0.1),N);
label("$8$",(x[5],-0.1),S);
label("$9$",(x[6],-0.1),S);

