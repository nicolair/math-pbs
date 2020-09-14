size(4cm);

real r1 = 0.4;
real r2 = 0.6;

real theta = 0;
pair u = (cos(theta),sin(theta));
pair u1 = (1+r1)*u;
pair u2 = (1+r2)*u;

real phi = 1.4;
pair v = (cos(phi),sin(phi));
pair v1 = (1+r1)*v;
pair v2 = (1+r2)*v;

draw(unitcircle,black+1);

draw(shift(u2)*scale(r2)*unitcircle, green+1);
draw(shift(u2)*scale(r1)*unitcircle, dotted+1);
draw(shift((r1-r2)*u)*shift(u2)*scale(r1)*unitcircle, red+1);

draw(shift(v2)*scale(r2)*unitcircle, green+1);
draw(shift(v2)*scale(r1)*unitcircle, dotted+1);
draw(shift((r1-r2)*v)*shift(v2)*scale(r1)*unitcircle, red+1);