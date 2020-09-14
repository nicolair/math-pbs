size(7cm,7cm);

real alpha = 1.;

pair a = (cos(alpha),sin(alpha));
pair b = (cos(alpha+2*pi/3),sin(alpha+2*pi/3));
pair c = (cos(alpha-2*pi/3),sin(alpha-2*pi/3));

pair a1 = a + I*(b-c);
pair b1 = b + I*(c-a);
pair c1 = c + I*(a-b);

draw(a--b--c--cycle,darkgreen+1);
draw(a1--b1--c1--cycle,red+1);

dot(a,darkgreen+4);dot(b,darkgreen+4);dot(c,darkgreen+4);
dot(a1,red+4);dot(b1,red+4);dot(c1,red+4);

label("$A_1$",a1,SW);label("$B_1$",b1,E); label("$C_1$",c1,N);
label("$A$",a,NE);label("$B$",b,W);label("$C$",c,SE);