ec = 0.1;
num = 36;
figure(1);
for ec = 0.1:0.1:2
    den = [1,12*ec,36];
    sys = tf(num,den);
    step(sys);
    hold on;
end
