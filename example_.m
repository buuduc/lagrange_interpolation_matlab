% bai vi du giai figure 24.6

clc 
clear all 
close all 
%% thong so dau vao
syms x
X=[0 5 10 15 20 25 30]
FX=[0 9 13 14 10.5 12 5]
THETA=[0.5 1.4 0.75 0.9 1.3 1.48 1.5]
%% ket qua
fprintf('ham F(x) su dung noi suy da thuc lagrange la: ')
fx=lagrange(x,X,FX) %lagrange(tenbien,mangX,mangFX)

fprintf('ham THETA(x) su dung noi suy da thuc lagrange la: ')
theta=lagrange(x,X,THETA) %lagrange(tenbien,mangX,mangFX)

fprintf('ham F(x)cos(THETA) co dang :')
ft=fx*cos(theta)

fprintf('da thuc xap xi dao ham bac nhat: ')
diff1=diff(ft,x,1) % diff(dathuc, biendaoham, capdaoham)


fprintf('da thuc xap xi dao ham bac hai: ')
diff2=diff(ft,x,2) % diff(dathuc, biendaoham, capdaoham)

fprintf('gan gia tri vao da thuc')
FX5=subs(ft,x,5)  % subs(dathuc,tenbien,gia tri)


%% ve do thi 
hold on
xlabel('x')
ylabel('fx')
plot(X,subs(ft,x,X),'Color','red') %do thi ham noi suy lagrange
plot(X,subs(diff1,x,X),'Color','blue') %do thi dao ham bac nhat
plot(X,subs(diff2,x,X),'Color','green')% do thi dao ham bac hai 
hold off

%% ve do thi figure 24.6
figure
Xdothi=0:0.5:30;
plot(Xdothi,subs(ft,x,Xdothi),'Color','red')

