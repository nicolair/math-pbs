settings.outformat = "pdf";
import graph;
size(3cm);

pen V = deepgreen+1;
pen R = red+1;

real alpha = pi/4;
pair O = (0,0);
pair A = (1,0);
pair B = (1/sqrt(2),1/sqrt(2));
pair C = (1,.8);

draw(arc(O,1,0,45),V);
draw(O--A);
draw(O--B);
draw(A--B,R);

