import three;
import solids;

size(4cm);

draw(unitsphere, gray);
triple u;

u=(0,1.5,0);
draw(shift(u)*scale3(0.5)*unitsphere,green);

u=(1.5,0,0);
draw(shift(u)*scale3(0.5)*unitsphere,green);

u=(0,0,1.5);
draw(shift(u)*scale3(0.5)*unitsphere,green);

u=(1,1,0.7);
u = (1.5/sqrt(3))* u;
draw(shift(u)*scale3(0.5)*unitsphere,green);
