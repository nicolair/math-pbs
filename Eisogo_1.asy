import three;
settings.render = 0;
settings.prc = false;

size(9cm);
/*
currentprojection=orthographic(4,3,1,up=Z);
*/
int p = 120;
real theta = p*pi/180;
real c = cos(theta);
real s = sin(theta);
real mu = 2*sqrt(2)/3;
real nu = -1/3;

triple O = (0,0,0);
triple u = (1,0,0);
triple v = (c,s,0);
triple w = (c,-s,0);
triple d = (0,0,1);
triple a = (mu,0,nu); 
triple b = (mu*c,mu*s,nu);
triple c = (mu*c,-mu*s,nu);

path3 pl = plane((2.6,0,0),(0,2.6,0),(-1,-1,0));
draw(pl,darkgreen);

draw(u--a,dotted+1);
draw(v--b,dotted+1);
draw(w--c,dotted+1);

draw(O--u,darkgreen,Arrow3);
draw(O--v,darkgreen,Arrow3);
draw(O--w,darkgreen,Arrow3);

draw(O--a,dashed+red+1,Arrow3);
draw(O--b,dashed+red+1,Arrow3);
draw(O--c,dashed+red+1,Arrow3);
draw(O--d,red+1,Arrow3);



