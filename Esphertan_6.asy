import three;
import solids;

size(4cm);
//currentprojection = perspective(5,4,20);

triple u;
real r= 0.5/sqrt(2);

u=(0.5,0,0);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(0,0.5,0);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(1,0.5,0);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(0.5,1,0);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(0.5,0,1);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(0,0.5,1);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(1,0.5,1);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(0.5,1,1);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(0,0,0.5);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(0,1,0.5);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(1,0,0.5);
draw(shift(u)*scale3(r)*unitsphere,green);

u=(1,1,0.5);
draw(shift(u)*scale3(r)*unitsphere,green);
