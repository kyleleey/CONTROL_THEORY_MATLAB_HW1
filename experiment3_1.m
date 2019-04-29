num = [2,16,40];
den = [1,6,8,0];
G = tf(num,den);
rlocus(G);
sgrid(0.565,[1 2 3 4 5 6]);
%求出放大倍数约为1
s = tf('s');
GH = G;
G0 = 10*(s*s+8*s+20)/(s*(s+4));
sys = G0/(1+GH);
sys1 = zpk(sys);
sys1