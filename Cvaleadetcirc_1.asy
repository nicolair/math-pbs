settings.outformat = "pdf";
size(11cm);

pen GrosCrayon = defaultpen +1;
pen CrayonVert = darkgreen ;
pen CrayonRouge = red +5;

int m = 11;
pair u = expi(2*pi/m);
pair v = (1,0);

pair[] U;
U.push(v);

for ( int i = 1; i < m; ++i )
  {
    v = u*v;
    U.push(v);
  }

pair somme( int n)
{
  // décomposition de n en base 2
  pair S = 0;
  for ( int i = 0; i < m; ++i )
    {
      if ( n % 2 == 1)
        {
          S = S + U[i];
          n = n - 1;
        } else {
          S = S - U[i];
        }
      n = n # 2;
    }
  return S;
}

draw((-m,0)--(m,0));
draw((0,-m)--(0,m));
for ( int n = 0; n < 2^m; ++n )
  {
    dot(somme(n), CrayonVert);
  }
