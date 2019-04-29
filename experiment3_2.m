num = [1,6,13];
den = [1,4,3,0];
rlocus(num,den);
%超调量为0.0948，可求出阻尼比为0.6
sgrid(0.6,[1,2,3,4,5,6]);
%下面开始计算闭环函数,由根轨迹图可知增益为6.02或0.193
s = tf('s');
G1 = 6.02*(s*s+6*s+13)/(s*(s+3));
G2 = 0.193*(s*s+6*s+13)/(s*(s+3));
H = 1/(s+1);
sys1 = G1/(1+G1*H);
sys2 = G2/(1+G2*H);
syszpk1 = zpk(sys1);
syszpk2 = zpk(sys2);
syszpk1
syszpk2
