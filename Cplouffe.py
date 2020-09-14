import sympy as sym
from sympy import evalf
def s(n):
    s = sym.Rational(4,8*n+1)
    s += sym.Rational(-2,8*n+4)
    s += sym.Rational(-1,8*n+5)
    s += sym.Rational(-1,8*n+6)
    return s


print(s(0),s(1),s(2))


print(2**(-3) + 2**(-8) + 2**(-11) + 2**(-15)++ 2**(-20) + 2**(-23) + 2**(-27) - 106/819)
print(2**(-27))

#développement binaire
p = 106
q = 819
def devbinrat(p,q):
    i = 0
    lili = []
    while i < 23:
        lili.append([i,p//q,p])
        if p >= q:
            p = p % q
        p = 2*p
        i += 1
    print(lili)

#print(2/15 + 106/819 + 13/17 -3/5 -16/21 -8/11)

devbinrat(106,819)
devbinrat(829,19635)
