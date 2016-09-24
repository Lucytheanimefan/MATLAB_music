 low_G = 220*2^(10/12);
 Ab=2*220*2^(-1/12)
A = 2*220*2^(0/12);
Bb = 2*220*2^(1/12);
B = 2*220*2^(2/12);
C = 2*220*2^(3/12);
Db = 2*220*2^(4/12);
D = 2*220*2^(5/12);
Eb = 2*220*2^(6/12);
E = 2*220*2^(7/12);
F = 2*220*2^(8/12);
Gb = 2*220*2^(9/12);
G = 2*220*2^(10/12);

oct1=2;
oct2=2*2;
one_beat=0.7;
quarter_beat=0.25*one_beat;
half_beat=0.5*one_beat;
two_beats=2*one_beat;

short_rest=Notes(0,0.009); %delete these later!

h=0.3
freq_mod=-7
line1=[Notes(C,1.5*one_beat),Notes(Eb,half_beat),Notes(F,1.5*one_beat), Notes(G,half_beat), Notes(C,4*one_beat)];
line2=[Notes(C,1.5*one_beat),Notes(Eb,half_beat),Notes(F,1.5*one_beat),Notes(oct1*Bb, half_beat,0,1.1*0.9, freq_mod,2),...
    Notes(G,3*one_beat)]
line3=[Notes(G,half_beat,2,h),Notes(oct1*Bb,half_beat,2,h),Notes(oct1*C,3*one_beat,0,h*0.9,freq_mod,2),Notes(oct1*Bb,half_beat,2,h),...
    Notes(G,half_beat,2,h),Notes(G,4*one_beat,0.5,h,freq_mod,2)]
line4=[Notes(F,1.5*one_beat,2,1.1*h),Notes(G,half_beat,2,1.2*h),Notes(D,1.5*one_beat,2,1.5*h),Notes(Eb,half_beat,2,2*h),Notes(C,8*one_beat)]


soundsc([line1,line2,line3]);


