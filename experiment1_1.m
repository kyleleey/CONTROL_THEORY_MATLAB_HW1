A = [-2.8 -1.4 0 0
    1.4 0 0 0
    -1.8 -0.3 -1.4 -0.6
    0 0 0.6 0];
B = [1;0;1;0];
C = [0 0 0 1];
D = 0;
[num,den] = ss2tf(A,B,C,D);
sys = tf(num,den);
[z,p,k] = tf2zp(num,den);
sys1 = zpk(z,p,k);
p = roots(den);
ss = find(real(p)>0);
tt = length(ss);
sys
sys1
if(tt>0)
    disp('系统不稳定')
else
    disp('系统稳定')
end