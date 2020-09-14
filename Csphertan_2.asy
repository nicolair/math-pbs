size(6cm);

real r = 0.4;

real theta = 0;
pair u = (cos(theta),sin(theta));
pair u1 = (1+r)*u;
dot(u1);

draw(unitcircle,black+1);

draw(shift(u1)*scale(r)*unitcircle, green+1);

real OP = sqrt(1+2r);
real c = OP/(1+r);
real s = sqrt(1-c^2);

pair us = OP*(c, s);
pair ui = OP*(c, -s);

draw(us--u1,dotted+1);
draw(ui--u1,dotted+1);

dot(us);
label("$P$",us,NE);

pair un;
un = (1/sqrt(us.x^2 + us.y^2))*us;
dot(un);
label("$Q$",un,NE);

us = 1.5*us;
ui = 1.5*ui;

draw((0,0)--us,dotted+1);
draw((0,0)--ui,dotted+1);
draw((un.x,0)--un,dotted+1);

dot((un.x,0));
label("$H$",(un.x,0),SW);

draw((0,0)--(2,0),dotted+1);

dot((0,0));

label("$O$",(0,0),N);
label("$C$",u1,E);
