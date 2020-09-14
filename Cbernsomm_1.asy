settings.outformat = "pdf";
import graph;
size(11cm);

pen V = deepgreen+1;
pen R = red+1;
pen D = currentpen;

pair i = (1,0);
path G;

real b2(real x) {return x^2 - x + 1/6 ;}
G = graph(b2, 0, 1);
draw(G,V);
for(int k=0; k < 2; ++k){
  G = shift(i)*G;
  draw(G,V);
}

real b3(real x) {return x^3 - 1.5*x^2 + 0.5*x ;}
G = graph(b3, 0, 1);
draw(G,R);
for(int k=0; k < 2; ++k){
  G = shift(i)*G;
  draw(G,R);
}