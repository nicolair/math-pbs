size(7cm,7cm);

pair a = (10,-1);
pair b = (-2,2);
pair c = (4,5);

pair a1 = a + I*(b-c);
pair b1 = b + I*(c-a);
pair c1 = c + I*(a-b);

draw(a--b--c--cycle,dashed);
draw(a1--b1--c--cycle, red+1);
draw(b1--c1--a--cycle, darkgreen+1);
draw(c1--a1--b--cycle, darkblue+1);

dot(a,black+4);dot(b,black+4);dot(c,black+4);
dot(a1,red+4);dot(b1,red+4);dot(c,red+4);

label("$A_1$",a1,SE);label("$B_1$",b1,W); label("$C_1$",c1,NE);
label("$A$",a,SE);label("$B$",b,SW);label("$C$",c,N);