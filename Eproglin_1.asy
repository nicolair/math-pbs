settings.outformat = "pdf";
size(11cm);

pen GrosCrayon = defaultpen +1;
pen CrayonVert = darkgreen +1;
pen CrayonRouge = red +5;

draw((-0.3,0)--(3,-3)--(10,0)--(8,7)--(6,9)--(2,6)--cycle,CrayonVert);

pair x = (4,2);
pair u = (1.7,1.7);


draw((x-1.2*u)--(x+1.4*u));
draw(x--(x+u), darkgreen, Arrow);
dot(x,CrayonRouge);
dot(x+u,CrayonRouge);

label("$\mathcal{S}^+$",(6,8));
label("$x$",x,SE);
label("$x + u$",x + u,SE);
label("$u$",x+0.5u,W);

real l = -1;
dot(x+l*u,CrayonRouge);
label("$x + \lambda u$",x+l*u,SE);

label("une solution acceptable extrémale",(14.8,7.2));
dot((8,7),darkgreen + 5);
