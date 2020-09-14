size(7cm);

path unitcircle = E..N..W..S..cycle;

draw(unitcircle,deepgreen+1);
real alpha = -0.3;
real beta = 0.9;
real gamma = 2;

pair A = (cos(alpha), sin(alpha));
pair B = (cos(beta),sin(beta));
pair C = (cos(gamma), sin(gamma));

pen styl = heavymagenta+8;

dot(A,styl );
dot(B,styl );
dot(C,styl );
label("$A (e^{i\alpha})$", A+(0.1,0),E);
label("$B (e^{i\beta})$", B,NE);
label("$C (e^{i\gamma})$", C,NW);