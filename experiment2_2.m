num = 1;
den = [1,1,1];
G = tf(1,[1,1,1]);
%step(num,den);
[y,t] = step(G);
%��ֵʱ��
[Y,k] = max(y);
timetopeak = t(k);
disp(['��ֵʱ�䣺 ',num2str(timetopeak),' ��ֵ�� ',num2str(Y)]);
%������
C = dcgain(G);
[Y,k] = max(y);
overshoot = 100*(Y-C)/C;
disp(['��������',num2str(overshoot)]);
%����ʱ��
C = dcgain(G);
m = 1;
while y(m) < C
    m = m+1;
end
risetime = t(m);
disp(['����ʱ�䣺',num2str(risetime)]);
%��̬ʱ�䣬������ʱ�䣨ȡ���Ϊ0.02��
C = dcgain(G);
i = length(t);
while(y(i)>0.98*C)&(y(i)<1.02*C)
    i = i-1;
end
steadytime = t(i);
disp(['��̬ʱ�䣨������ʱ�䣬ȡ���Ϊ0.02����',num2str(steadytime)])
