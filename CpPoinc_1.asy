import graph;
size(7cm);

for(int i=0; i<10; ++i)
{ 
  real k = 1.1 + i*0.5;
  pair centre = (0,k);
  draw(circle(centre,sqrt(k^2-1)),red+1);
}

axes((-6,-1),(6,12));

