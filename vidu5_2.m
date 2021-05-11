syms x

X=[1 1.3 1.7 2.0];
Y=[2.26 2.87 3.15 3.52 ];

%% gia tri bien nhap 1 symbol (tra ve 1 symbol)
y=lagrange(x,X,Y)
ydiff1= diff(y,x,1)

double(subs(ydiff1,x,1.42))


