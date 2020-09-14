settings.outformat = "pdf";
import graph;
size(10cm);

pair A = (0,-1);
dot(A, black+3);
label("$A$",A+(-0.5,0));

pair O = (0,0);
dot(O, black+3);
label("$O$",O,NE);

real f(real t)
{
  return 1/(2*t);
}

guide H = graph(f, 0.1,5.2);
H = rotate(45)*H;
H = shift(0,-1)*H;
draw(H, deepgreen+1);

guide H = graph(f, -0.1,-5.2);
H = rotate(45)*H;
H = shift(0,-1)*H;
draw(H, deepgreen+1);

axes("x", "y");

pair Xmin = (0,-1)+(-4,-4);
pair Xmax = (0,-1)+(4,4);
draw(Xmin--Xmax);
pair Ymin = (0,-1)+(-4,4);
pair Ymax = (0,-1)+(4,-4);
draw(Ymin--Ymax);
label("$X$",(4,2.5));
label("$Y$",(-4,2.3));

draw((0,-5.5)--(0,4),deepgreen+1);
label("$\Delta$",(0.5,-5));
label("$\mathcal{C}$",(-2.5,-5));