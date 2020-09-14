import three;
import solids;

size(4cm);
currentprojection = perspective(5,4,20);

triple u;
real r=sqrt(2);

u=(1,1,1);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(1,-1,-1);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(-1,1,-1);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(-1,-1,1);
draw(shift(u)*scale3(r)*unitsphere,green);

