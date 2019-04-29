figure(1);
for wn = 2:2:12
    num = wn*wn;
    den = [1,1.4*wn,wn*wn];
    sys = tf(num,den);
    step(sys);
    hold on
end
