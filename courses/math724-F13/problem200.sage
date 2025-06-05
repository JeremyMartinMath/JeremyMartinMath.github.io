## Quick Sage code for Bogart problem 200
## First, tell Sage the names of variables you're going to use.

var('p,n,d,q')

## Define a function f(x) = 1+x+...+x^5.
## Note that "range(n)" means 0,1,...,n-1.
## Also, "lambda" should be translated as "the function that maps the 
## thing in front of the colon to the thing after the colon.

U = lambda x: sum(x^i for i in range(6))

## Here's the picture enumerator.  (The first line tells Sage what it 
## is; the second line tells Sage to show us.  Note that the output is 
## very long since F has 6^4 = 1296 terms.)

F = U(p)*U(n)*U(d)*U(q)
F

## How many ways can you make change for a dollar?
## Read off the coefficient of x^100 in the following
## polynomial.

F.subs(p=x, n=x^5, d=x^10, q=x^25)
