size(10cm,0);

pen GrosCrayon = defaultpen +1;
pen CrayonRouge = red +2;
pen GrosCrayonRouge = red +5;

draw((-0.1,0)--(10,0),Arrow);
draw((0,-0.1)--(0,3),Arrow);

label("$\frac{1}{k+1}$",(1,-0.1),S);
dot((1,0),GrosCrayonRouge);

label("$\frac{1}{k+\frac{1}{2}}$",(5,-0.1),S);
dot((5,2),GrosCrayonRouge);

label("$\frac{1}{k}$",(9,-0.1),S);
dot((9,0),GrosCrayonRouge);

draw((5,0)--(9,0),CrayonRouge);
draw((1,2)--(5,2),CrayonRouge);