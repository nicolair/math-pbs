import graph;
size(8cm,0);

pen crayon = defaultpen;
pen GrosCrayon = crayon +1;
pen GrosCrayonRouge = red +1;
pen GrosCrayonVert = deepgreen +1;
pen PetitCrayon = crayon +0.2;

real u(real t) {return t^2;};
real v(real t) {return 2*t;};

guide P = graph(u,v,-2.5,2.5);

real a(real t) {return -2*t/(1+t^2);};
real b(real t) {return (-2+t+t^3)/(1+t^2);};

guide El = graph(a,b,-5,5);

pair F = (1,0);
pair A = (1,-2);

real t = 1.8;
pair M = (u(t),v(t));
pair N = (a(t),b(t));

pair T = (t,1);
pair n = (-1,t);
real l = 2.2;
pair T1 = M - 2.5*T;
pair T2 = M + 1.5*T;

pair A1 = A - n;
pair A2 = A + 2.2*n;

xaxis(Arrow);
yaxis(Arrow);
dot(F,deepgreen);
yaxis(XEquals(-1),deepgreen + dashed);

draw(P,GrosCrayonVert);
draw(El,GrosCrayonRouge);


draw(T1--T2,red+dashed);
dot(M,red);
dot(N,red);

draw(A1--A2,red+dashed);
dot(A,deepgreen);

label("Directrice",(-1,-4.8));
label("$A$",A,NE);
label("$F$",F,NE);
label("Foyer",F,SE);
label("$M(t)$",M,SE);
label("$N(t)$",N,E);
label("$\mathcal{E}$",(-0.7,4.3));
label("$\mathcal{P}$",(6,4.5));