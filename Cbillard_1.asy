settings.outformat = "pdf";
import graph;
size(5.5cm);

pen V = deepgreen+2;
pen R = red+1;

pair O = (0,0);
path U = circle(O,1);
draw(U, V);

real alph = 0.5;
real deg = (180*alph)/pi;

pair A = (cos(alph),sin(alph));
pair AA = scale(2)*A;
draw(O--A);

dot(A,R+5);
label("$M_0$",A+(0.1,-0.1),E);

pair v = (cos(3),sin(3));

draw(A--(A+v),R,Arrow);
label("$\overrightarrow{v_0}$",A+v,N);

draw(A--AA,R,Arrow);
label("$\overrightarrow{0M_0}$",AA,N);

draw(arc(A,0.4,deg,deg +140.5),Arrow);
label("$\alpha$",A+(0,0.5));
