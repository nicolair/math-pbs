size(8cm);

int n=5;


pair[] M={(0,0),(0,1),(0,2),(1,0),(1,1),(1,2),(2,0),(2,1),(2,2),(5,1.5),(1.5,5),(5,5),(5,-5)};

for(int i=0; i<13; ++i){
  dot(M[i],darkgreen + 4);
}

draw(M[0]--M[1]--M[2]--M[10],mediumred+1);
draw(M[3]--M[4]--M[5]--M[10],red+1);
draw(M[6]--M[7]--M[8]--M[10], heavyred+1);

draw(M[0]--M[3]--M[6]--M[9], mediumblue+1);
draw(M[1]--M[4]--M[7]--M[9], blue+1);
draw(M[2]--M[5]--M[8]--M[9], heavyblue+1);


draw(M[0]--M[4]--M[8]--M[11],mediumcyan+1);
draw(M[1]--M[5]--M[6]--M[11],cyan+1);
draw(M[2]--M[3]--M[7]--M[11],heavycyan+1);

draw(M[2]--M[4]--M[6]--M[12],mediummagenta+1);
draw(M[1]--M[3]--M[8]--M[12],magenta+1);
draw(M[0]--M[5]--M[7]--M[12],heavymagenta+1);

draw(M[12]--M[9]--M[11]--M[10],darkgreen+1);