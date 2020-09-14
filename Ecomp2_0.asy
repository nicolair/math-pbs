settings.outformat = "pdf";
import graph;
size(4cm);

pen Vert = deepgreen+3;
pen vert = deepgreen+1;
pen Rouge = red+3;
pen rouge = red+1;

pair A = (0,0);
pair B = (1,0.7);

pair M = (0.8,0.2);
pair MM = reflect(A,B)*M;

dot(A,Vert);
dot(B,Vert);
dot(M,Rouge);
dot(MM,Rouge);

draw(scale(1.1)*((A-0.1*B)--(1.1)*B),vert);
draw(M--MM,rouge+dashed);

label("$A$",A,NW);
label("$B$",B,NW);
label("$M'$",MM,N);
label("$M$",M,E);
