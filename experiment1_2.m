G1 = tf(1,[1,1]);
G2 = tf(1,[1,2]);
G3 = tf(1,[1,3]);
H1 = tf(1,[1,4]);
H2 = tf(1,[1,5]);
%最前面两个反馈可以并在一起，并且最开始加一个传递函数为1的方块便于函数设置
G0 = tf(1,1);
sys = append(G0,G1,G2,G3,H1,H2);
Q = [2,1,-4,6
    3,2,-5,0
    4,3,0,0
    5,4,0,0
    6,3,0,0];
inputs = 1;
outputs = 4;
sysc = connect(sys,Q,inputs,outputs);
systf = tf(sysc);