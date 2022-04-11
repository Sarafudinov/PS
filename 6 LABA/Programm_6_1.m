num = [20,30,40];
den= [12,34,45];
[z,p,k]=tf2zp(num,den);
sos=zp2sos(z,p,k)
