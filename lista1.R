#####################################################################
# Lista de exercícios 1
# Autor: Bruna Balsarini
# Data: __/03/2026
#####################################################################

# --- Exercício 1 ---

# (a)
3 + 4 * 8

# (b)
(3 + 4) * 8

# (c)
8 * 5 + 2 * 3

# (d)
8 * (5 + 2) * 3

# (e)
2^3 + 2 * sqrt(3)

# (f)
(2*8)/3 + 5/(6+8)

# (g)
1 + 2 + 3 + 4 + 5 + 6 + 7 + 8

# (h)
1 * 2 * 3 * 4 * 5 * 6 * 7 * 8

# (i)
(1 + 1/8) ** 3

# (j)
cos(pi)

# (k)
sen(pi)^2 + cos(pi)^2

# (l)
log(9)

# (m)
abs(8 - 19)

# (n)
2/factorial(7) + sqrt(2)/2



# --- Exercício 2 ---

# (a)
M <- matrix(c(5, 0, 6, 9, 6, 4, 3, 5, 2), ncol=3, byrow=TRUE)

# (b)
dim(M)

# (c)
diag(M)



# --- Exercício 3 ---

a <- 1:10
mode(a)
class(a)

b <- letters[1:6]
mode(b)
class(b)

c <- matrix(letters[1:6],ncol=2)
mode(c)
class(c)

d <- c("verde","azul","rosa")
mode(d)
class(d)

e <- c(4i,8i,9i)
mode(e)
class(e)

f <- c(5>2,7<2,8>3)
mode(f)
class(f)

g <- date()
mode(g)
class(g)

