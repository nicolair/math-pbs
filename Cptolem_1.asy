settings.outformat = "pdf";
size(6cm);
pen CR1 = deepgreen + 1 ;
pen CR4 = deepgreen + 4;
pen CR3 = red + 3;

path unitcircle=E..N..W..S..cycle;

draw(unitcircle);

real alpha1 = .2;
real alpha2 = 1.1;
real alpha3 = 2.1;
real alpha4 = 3.9;

pair M1 = (cos(alpha1), sin(alpha1));
pair M2 = (cos(alpha2), sin(alpha2));
pair M3 = (cos(alpha3), sin(alpha3));
pair M4 = (cos(alpha4), sin(alpha4));

dot(M1,CR4);
dot(M2,CR4);
dot(M3,CR4);
dot(M4,CR4);

label("$M_1 (e^{i \alpha_1})$",M1,E);
label("$M_2 (e^{i \alpha_2})$",M2,NE);
label("$M_3 (e^{i \alpha_3})$",M3,N);
label("$M_4 (e^{i \alpha_4})$",M4,E);