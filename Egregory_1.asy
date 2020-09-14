settings.outformat = "pdf";
import graph;
size(6cm);

pen V = deepgreen+1;
pen R = red+2;

real alpha = pi/5;
real alphad = alpha*180/pi;
pair O = (0,0);
pair A = (1,0);
pair B = (cos(alpha),sin(alpha));
pair C = (1,.8);
pair D = (1,tan(alpha));

draw(arc(O,1,-5,10+alpha*180/pi),V);
dot(O);
label("$0$",O,NW);
draw(O--1.1*A);
draw(O--B);
draw(D--C);
draw(B--1.3*B);
dot(B);
label("$e^{i\alpha}$",B+(0.04,0.07));
dot(A);
label("$1$",A,NE);
draw(A--B,R);
draw(A--D,R);

dot(D);
label("$z$",D,NW);
