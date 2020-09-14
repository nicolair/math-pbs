settings.outformat = "pdf";
import graph;
size(6cm);

pen V = deepgreen+2;
pen R = red+1;

pair O = (0,0);
path U = circle(O,1);
draw(U, V);

real alph = 0.5;

pair A = (cos(alph),sin(alph));
pair AA = scale(1.8)*A;
draw(O--AA);

dot(A,R+5);
label("$M_0$",A+(0.1,-0.1),E);

pair v = (cos(3),sin(3));

draw(A--(A+v),R,Arrow);
label("$\overrightarrow{v_0}$",A+v,N);
