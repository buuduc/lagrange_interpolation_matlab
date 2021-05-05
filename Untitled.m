syms x
X=[1 1.3 1.7 2];
Y=[2.26 2.87 3.15 3.52];
y=lagrange(x,X,Y)
subs(y,x,2)
diff(y,x,1)