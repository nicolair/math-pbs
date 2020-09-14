import graph;
size(6cm);

pen crayon = defaultpen;
pen GrosCrayon = crayon +1;
pen GrosCrayonRouge = red +1;
pen GrosCrayonVert = deepgreen +1;
pen PetitCrayon = crayon +0.2;

real a(real t) {return -2*t/(1+t^2);};
real b(real t) {return (-2+t+t^3)/(1+t^2);};
real theta(real t) {return 2/(t-1);};

pair N(real t) {return (a(t),b(t));};
pair d(real t) {return (4*(t-1),t^3-t^2+3t+1);};
guide El = graph(a,b,-4.2,0.8);


draw(El,red);

real t1 = 0.5;
real t2 = 0;
real t3 = (2+t1+t2)/(t1*t2-1);


draw(N(t1)--N(theta(t1)),darkgreen+dotted+1);draw(N(t2)--N(theta(t2)),darkgreen+dotted+1);draw(N(t3)--N(theta(t3)),darkgreen+dotted+1);
dot(N(t1),red);dot(N(t2),red);dot(N(t3),red);
dot(N(theta(t1)),darkgreen);dot(N(theta(t2)),darkgreen);dot(N(theta(t3)),darkgreen);
draw(N(t1)--N(t3), red+dashed);
draw(N(theta(t2))--N(theta(t1)), deepgreen+dashed+1);


