settings.outformat = "pdf";
import graph;
size(5.5cm);

pen V = deepgreen+2;
pen R = red+1;

pair O = (0,0);
path U = circle(O,1);
draw(U);

real alph = 0.5;
real beta = 2;
pair A = (cos(alph),sin(alph));
pair B = (cos(beta),sin(beta));
pair v0 = unit(B - A);

draw( B--(B-v0), R, Arrow );

pair C = reflect(B,O)*A;
pair v1 = unit(C-B);
draw(B--(B+v1), R, Arrow);

draw(B--O, defaultpen+1,Arrow);

dot(A,R+5);
label("$M_{0}$",A,NE);
dot(B,R+5);
label("$M_{1}$",B,NW);
dot(C,R+5);
label("$M_{2}$",C,W);

label("$-\overrightarrow{v_0}$",B-v0,S);
label("$\overrightarrow{v_1}$",B+v1,S);
label("$-\overrightarrow{OM_1}$",(0,0),S);

draw(arc(B,.6,-64,-20),Arrow);
draw(arc(B,.7,-65,-110),Arrow);

label("$\theta$",(.12,.42));
label("$\varphi$",(-.35,.1));
