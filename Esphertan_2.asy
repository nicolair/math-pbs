import three;
import solids;

size(4cm);
currentprojection = perspective(5,4,20);

triple u;
real r=sqrt(3)/2;

u=(1,0,0);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(-0.5,sqrt(3)/2,0);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(-0.5,-sqrt(3)/2,0);
draw(shift(u)*scale3(r)*unitsphere,green);

