settings.outformat = "pdf";
size(6cm);
pen CR1 = deepgreen;
pen CR2 = deepgreen + 1;
pen CR3 = red + 3;

pair A = (0,0);
pair B = (1,0);
pair C = (1,1);
pair D = (0,1);

draw(A--B--C--D--A);

real gamma = 0.3;
pair G = (1,gamma);
pair B1 = (1+gamma,0);
pair G1 = G + (gamma,0);

draw(B--B1--G1--G--B,CR2);

pair G2 = G + (1-gamma,0);
pair C1 = C + (1-gamma,0);

draw(G--G2--C1--C--G,CR2);

pair W = (0.5,0.5);
pair V = 0.5*G + 0.5*B1;
pair U = 0.5*G + 0.5*C1;

dot(A,CR1);
dot(B,CR1);
dot(C,CR1);
dot(D,CR1);

dot(G,CR1);
label("$G$",G,NW);

dot(U,CR3);
dot(V,CR3);
dot(W,CR3);

label("$A$",A,S);
label("$B$",B,S);
label("$C$",C,N);
label("$D$",D,N);

label("$U$",U,E);
label("$V$",V,E);
label("$W$",W,NW);

draw(W--V,red);
draw(U--B,red);