size(5cm);

pen Gv = darkgreen +1;

real a = 2;
real b = 0.7;
real c = sqrt(a^2-b^2);
pair A1 = (a,0);
pair A2 = (-a,0);
path Ell = scale(a,b)* unitcircle;

draw(Ell,Gv);

real t = 1;
pair M1 = (a*cos(t),b*sin(t));
pair M2 = (a*cos(t),-b*sin(t));
pair v1 = (-a*sin(t),b*cos(t));
pair v2 = (a*sin(t),b*cos(t));
dot(M1,Gv+4);
dot(M2,Gv+4);

draw(M1-0.7*v1--M1+0.7*v1,red+1);
draw(M2-0.7*v2--M2+0.7*v2,red+1);


real d = M1.x;
pair centre = (c^2*d/a^2,0);
real r = b*sqrt(1-c^2*d^2/a^4);

path C = circle(centre,r);

draw(C,red+1);

label("$M_1$",M1,N);
label("$M_2$",M2,S);
