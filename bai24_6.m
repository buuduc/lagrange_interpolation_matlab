% bai 24.6 trang 684

clc 
clear all 
close all 
%% thong so dau vao
syms x
X=[0 5 10 15 20 25 30]
C=[0 9 13 14 10.5 12 5]
%% ket qua
fprintf('ham c(x) su dung noi suy da thuc lagrange la: ')
cx=lagrange(x,X,C) %lagrange(tenbien,mangX,mangFX)


fprintf('da thuc xap xi dao ham bac nhat: ')
dc_dx=diff(cx,x,1) % diff(dathuc, biendaoham, capdaoham)

fprintf('ham so co dang g/cm^2/s')
D=1.52e-6
hamso=-D*dc_dx
fprintf('gia tri tai c"(0) ')
Massflux=subs(dc_dx,x,0)  % subs(dathuc,tenbien,gia tri)

fprintf('thoi gian 1 nam: ')
t=3600*24*365
% fprintf('gan gia tri vao da thuc')
% FX0=subs(ft,x,5)  % subs(dathuc,tenbien,gia tri)
fprintf('dien tich tram tich')
S=3.6e6*10^4 % chuyen sang cm^2
fprintf(' chat o nhiem se duoc di chuyen vao ho trong 1 nam  (g)')
result=Massflux*S*t

%% ve do thi 
hold on
xlabel('x')
ylabel('c')
plot(X,C,'Color','red') %do thi ham noi suy lagrange
plot(X,subs(dc_dx,x,X),'Color','blue') %do thi dao ham bac nhat
hold off


