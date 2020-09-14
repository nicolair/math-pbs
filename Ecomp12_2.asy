size(7cm,7cm);

real x = 5;

pair a = ((x-1)/2,-(x+1)/2);
pair b = ((x+1)/2,(x-1)/2);
pair c = (0,1);

pair a1 = a + I*(b-c);
pair b1 = b + I*(c-a);
pair c1 = c + I*(a-b);

draw(a--b--c--cycle,darkgreen+1);
draw(a1--b1--c1--cycle, red+1);

dot(a,darkgreen+4);dot(b,darkgreen+4);dot(c,darkgreen+4);
dot(a1,red+4);dot(b1,red+4);dot(c1,red+4);

label("$A_1\, (1)$",a1,N);label("$B_1\,(-1)$",b1,S); label("$C_1\, (x)$",c1,S);
label("$A$",a,S);label("$B$",b,N);label("$C$",c,N);