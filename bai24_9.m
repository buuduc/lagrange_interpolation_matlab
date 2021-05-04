% bai vi du giai  bai 24.9

clc 
clear all 
close all 
%% thong so dau vao
syms epsilon
EPSILON=[153 198 270 320 355 410 460 512 562 614 664 716 766 ] %*10^(-3)
SIGMA=[87.8 96.6 176 263 350 569 833 1227 1623 2105 2677  3378  4257 ] %*10^3
%% ket qua
fprintf('ham sigma(epsilon) su dung noi suy da thuc lagrange la: ')
sigma=lagrange(epsilon,EPSILON,SIGMA) %lagrange(tenbien,mangX,mangFX))

fprintf('da thuc xap xi dao ham bac nhat dv/dt co dang: ')
ds_de=diff(sigma,epsilon,1) % diff(dathuc, biendaoham, capdaoham)

% fprintf('tuong duong voi t, ta co cac toc do dong chay Q tuong duong: ')
% Q=subs(dv_dt,t,T)  % subs(dathuc,tenbien,gia tri)


%% ve do thi 
hold on
xlabel('epsilon')
ylabel('sigma')
plot(EPSILON,SIGMA,'Color','red','Marker','*') %do thi ham noi suy lagrange V(t)
plot(EPSILON,subs(ds_de,epsilon,EPSILON),'Color','blue','Marker','*') %do thi dao ham bac nhat toc do dong chay Q
hold off


