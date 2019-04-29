num = 1;
den = [1,1,1];
G = tf(1,[1,1,1]);
%step(num,den);
[y,t] = step(G);
%峰值时间
[Y,k] = max(y);
timetopeak = t(k);
disp(['峰值时间： ',num2str(timetopeak),' 峰值： ',num2str(Y)]);
%超调量
C = dcgain(G);
[Y,k] = max(y);
overshoot = 100*(Y-C)/C;
disp(['超调量：',num2str(overshoot)]);
%上升时间
C = dcgain(G);
m = 1;
while y(m) < C
    m = m+1;
end
risetime = t(m);
disp(['上升时间：',num2str(risetime)]);
%稳态时间，即调节时间（取误差为0.02）
C = dcgain(G);
i = length(t);
while(y(i)>0.98*C)&(y(i)<1.02*C)
    i = i-1;
end
steadytime = t(i);
disp(['稳态时间（即调节时间，取误差为0.02）：',num2str(steadytime)])
