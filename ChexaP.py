import sympy as smp

## déclaration des symboles
x1, y1, z1 = smp.symbols('x1 y1 z1')
x2, y2, z2 = smp.symbols('x2 y2 z2')
x3, y3, z3 = smp.symbols('x3 y3 z3')

u1, v1, w1 = smp.symbols('u1 v1 w1')
u2, v2, w2 = smp.symbols('u2 v2 w2')
u3, v3, w3 = smp.symbols('u3 v3 w3')

## initialisation
a1 = smp.Matrix([x1, y1, z1])
a2 = smp.Matrix([x2, y2, z2])
a3 = smp.Matrix([x3, y3, z3])

b1 = smp.Matrix([u1, v1, w1])
b2 = smp.Matrix([u2, v2, w2])
b3 = smp.Matrix([u3, v3, w3])

## produits vectoriels
X12 = a1.cross(b2) ; X13 = a1.cross(b3) 
X21 = a2.cross(b1) ; X23 = a2.cross(b3)
X31 = a3.cross(b1) ; X32 = a3.cross(b2)

C1 = X23.cross(X32)
C2 = X31.cross(X13)
C3 = X12.cross(X21)

## calcul du lambda
C = C1.col_insert(1,C2)
C = C.col_insert(2,C3)
dlambda = C.det()

## calcul du mu
def li(L):
    return [L[0]**2, L[0]*L[1], L[0]*L[2], L[1]**2, L[1]*L[2], L[2]**2]

M = smp.Matrix([li(a1),li(a2),li(a3),li(b1),li(b2),li(b3)])
mu = M.det()

## vérification
print(dlambda - mu)