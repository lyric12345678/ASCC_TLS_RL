clear
clc
syms zeta_1 zeta_2 zeta_3 zeta_4 zeta_5
zeta=[zeta_1 zeta_2 zeta_3 zeta_4 zeta_5].';
w=sym('w',[5 6]);
w_1=w(1,:).';
w_2=w(2,:).';
w_3=w(3,:).';
w_4=w(4,:).';
w_5=w(5,:).';
w_sum=0;
for i= 1:length(zeta)
   w_sum=w_sum+zeta(i)* w(i,:).';
end
W=[w_1,w_2,w_3,w_4,w_5].';
% (zeta.'*W).'-w_sum
W.'*zeta-w_sum