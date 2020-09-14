import three;
import solids;

size(4cm);
//currentprojection = perspective(5,4,20);

triple u;
real r= 0.5;

u=(0,0,0);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(0,0,1);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(0,1,0);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(0,1,1);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(1,0,0);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(1,0,1);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(1,1,0);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(1,1,1);
draw(shift(u)*scale3(r)*unitsphere,green);

