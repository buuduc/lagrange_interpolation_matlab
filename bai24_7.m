% bai vi du giai figure 24.6

clc 
clear all 
close all 
%% thong so dau vao
syms t
T=[0 10 20 30 45 60 75]
V=10^6*[.4 .4 .77 .88 1.05 1.17 1.35]
%% ket qua
fprintf('ham V(t) su dung noi suy da thuc lagrange la: ')
v=lagrange(t,T,V) %lagrange(tenbien,mangX,mangFX)

fprintf('da thuc xap xi dao ham bac nhat dv/dt co dang: ')
dv_dt=diff(v,t,1) % diff(dathuc, biendaoham, capdaoham)

fprintf('tuong duong voi t, ta co cac toc do dong chay Q tuong duong: ')
Q=subs(dv_dt,t,T)  % subs(dathuc,tenbien,gia tri)


%% ve do thi 
hold on
plot(T,V,'Color','red') %do thi ham noi suy lagrange V(t)
plot(T,Q,'Color','blue') %do thi dao ham bac nhat toc do dong chay Q
hold off


