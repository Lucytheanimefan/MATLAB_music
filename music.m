%  Fs=8000;
%  Ts=1/Fs;
%  t=[0:Ts:0.3];
 low_G = 220*2^(10/12);
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
quarter_beat=0.0625;
half_beat=0.125;
one_beat=0.5;
two_beats=1;

short_rest=Notes(0,0.009); %delete these later!

mynote=Notes(oct2*Bb, 17);
oshieteyo=[Notes(oct2*Bb,half_beat),Notes(oct2*C,one_beat),...
    Notes(oct2*Bb,one_beat),Notes(oct2*A,half_beat),Notes(oct2*G,half_beat),...
    Notes(0,quarter_beat)];
oshieteyo2=[Notes(oct2*C,one_beat),Notes(oct2*Bb,one_beat),...
    Notes(oct2*A,one_beat),Notes(oct1*G,one_beat),Notes(oct1*G,half_beat),...
    Notes(oct1*F,half_beat), Notes(0,one_beat)];
sonoshikumiwo=[Notes(oct1*F,half_beat),Notes(oct1*Eb,one_beat),...
    Notes(oct1*F,half_beat),Notes(oct1*D,half_beat)];
rest1=Notes(0,one_beat*7.5);
bokuNoNakaNi=[Notes(D,half_beat),Notes(D,one_beat),Notes(D,half_beat),Notes(D,one_beat),...
    Notes(oct1*D,half_beat),Notes(oct1*D, half_beat)];
rest2=Notes(0,one_beat*3);
dareGaIruNo=[Notes(oct1*Bb,half_beat),Notes(oct1*A,one_beat),short_rest,Notes(oct1*A,half_beat),short_rest,...
    Notes(oct1*A,one_beat),...
    Notes(oct1*Bb,half_beat),Notes(oct1*Bb,one_beat)];
rest3 = Notes(0, one_beat);
kowareta=[Notes(oct2*A, half_beat),short_rest, Notes(oct2*A,one_beat),Notes(oct2*Bb,half_beat),short_rest,Notes(oct2*Bb,half_beat),...
    Notes(Bb,oct1*half_beat),Notes(oct1*C,one_beat),Notes(oct1*Bb,one_beat),Notes(oct1*A,half_beat),Notes(oct1*G,half_beat)];
rest4=Notes(0,half_beat);
%kowaretayo=

%left


%soundsc(kowareta);
soundsc([oshieteyo,oshieteyo2,sonoshikumiwo,rest1, bokuNoNakaNi,rest2,dareGaIruNo,rest3,kowareta]);
