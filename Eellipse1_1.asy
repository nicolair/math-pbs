size(6cm);

pen Gv = darkgreen +1;

real a = 2;
real b = 0.9;
pair A1 = (a,0);
pair A2 = (-a,0);
path Ell = scale(a,b)* unitcircle;

draw(Ell,Gv);
dot(A1,Gv+4);
dot(A2,Gv+4);

real d = 1;
pair M1 = (d,b*sqrt(1-d^2/a^2));
pair M2 = (d,-b*sqrt(1-d^2/a^2));
dot(M1,Gv+4);
dot(M2,Gv+4);
pair v1 = M1 - A1;
pair v2 = M2 - A2;

draw(A1-2.5*v1--A1+1.5*v1,red+1);
draw(A2-0.3*v2--A2+2.5*v2,red+1);

label("$A_1$",A1,NE);
label("$A_2$",A2,SW);
label("$M_1$",M1,N);
label("$M_2$",M2,S);