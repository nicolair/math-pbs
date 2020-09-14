settings.outformat = "pdf";
import graph;
size(6cm);

pen GCV = deepgreen +3;
pen CV =  deepgreen +1;

pair O = (0,0);
pair A = (3,2);
pair E = (4.5,1.2);

dot(O,GCV);
dot(A,GCV);
draw(O--A--E, CV);

label("$r_1$",(O+A)/2,N);
label("$r_2$",(2*E+A)/3,N);

draw(arc(O,0.5,0,65),Arrows);
draw(arc(A,0.5,-80,15),Arrows);