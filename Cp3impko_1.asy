settings.outformat = "pdf";
import graph;
size(11cm);

pen V = deepgreen+2;
pen R = red+1;
pen D = currentpen;

real f(real t) {return -(3*t**2 + t - 2)/2 ;}

draw(graph(f, -1.05, 1.05),V);

pair A = (-1, 0);
dot(A,R+5);
label("$-1$",A,NW);

pair B = (0,1);
dot(B,R+5);
label("$1$",B,NE);

pair C = (1, -1);
pair xC = (1,0);
dot(C,R+5);
label("$(1,-1)$",C,E);

axes((-1.2,-1.2),(1.2,1.2), Arrow);
pair Dm = (1.1,1.1);
pair Dp = (-1.1,-1.1);
draw(Dm--Dp);

pair O = (0,0);
pair U = (1,0);
draw((1,0.1)--(1,0));
draw((0,0.1)--(1,0.1),R+2);
label("$I_+$",(1.1,0.1));
label("$1$",(1,0),SE);

real k1 = 2/3;    // extrémité droite de K1
real k2 = 0.33;   // extrémité droite de K2
real k3 = -0.85;  // extrémité gauche de K3
real r3 = -0.68;  // extrémité droite de K3
real k4 = 0.95;   // extrémité droite de K4
real l4 = 0.90;   //extrémité gauche de K4

draw((0,-0.1)--(k1,-0.1),R+2);
label("$K_1$",(0.1,-0.2));

draw((k1,-0.2)--(k1,k1));

draw((k2,-0.2)--(k1,-0.2),R+2);
label("$K_2$",(0.5,-0.3));

draw((k2,-0.2)--(k2,f(k2)));

draw((r3,r3)--(r3,k1)--(k1,k1));
draw((k2,k2)--(k3,k2));

draw((r3,-0.1)--(k3,-0.1),R+2);
label("$K_3$",(-0.77,-0.2));

draw((k3,f(k3))--(k3,k3)--(k4,k3)--(k4,-0.1));
draw((r3,r3)--(l4,r3)--(l4,-0.1));
draw((k4,-0.1)--(l4,-0.1),R+2);
label("$K_4$",(0.95,-0.1),SE);