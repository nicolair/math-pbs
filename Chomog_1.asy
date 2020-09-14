settings.outformat = "pdf";
size(8cm);

import graph;

real M = 6;
axes(min=(-M,-M),max=(M,M), Arrow);

pen CrayonVert = deepgreen +1;
pen CrayonRouge = red +1;
pen GrosCrayonRouge = red +5;

real phi(real t){
  return (1+t)/(1-t);
}

draw((-M,-1)--(M,-1));
draw((1,-M)--(1,M));

draw(graph(phi,-M,0.71),CrayonVert);
draw(graph(phi,1.4,M),CrayonVert);

dot((0,1),GrosCrayonRouge);
label("$1$",(0,1),W);

dot((-1,0),GrosCrayonRouge);
label("$-1$",(-1,0),S);

label("$-1$",(0,-1),SW);
label("$1$",(1,0),NE);