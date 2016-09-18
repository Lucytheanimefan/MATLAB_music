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
one_beat=0.7;
quarter_beat=0.25*one_beat;
half_beat=0.5*one_beat;
two_beats=1;

short_rest=Notes(0,0.009); %delete these later!

%% Right hand 
line1=[Notes(C,1.5*one_beat),Notes(Eb,half_beat),Notes(F,1.5*one_beat), Notes(G,half_beat), Notes(C,4*one_beat)];
line2=[Notes(C,1.5*one_beat),Notes(Eb,half_beat),Notes(F,1.5*one_beat),Notes(oct1*Bb, half_beat),...
    Notes(G,3*one_beat)]
line3=[Notes(G,half_beat),Notes(oct1*Bb,half_beat),Notes(oct1*C,3*one_beat),Notes(oct1*Bb,half_beat),...
    Notes(G,half_beat),Notes(G,4*one_beat)]
line4=[Notes(F,1.5*one_beat),Notes(G,half_beat),Notes(D,1.5*one_beat),Notes(Eb,half_beat),Notes(C,8*one_beat)]
%lower part, left hand starts here
line5=[Notes(C/oct1, 1.5*one_beat),Notes(Eb/oct1,half_beat),Notes(F/oct1,1.5*one_beat),Notes(G/oct1,half_beat),...
    Notes(C/oct1,4*one_beat)]
line6=[Notes(C/oct1, 1.5*one_beat),Notes(Eb/oct1,half_beat),Notes(F/oct1,1.5*one_beat),Notes(Bb,half_beat),...
    Notes(G/oct1,3*one_beat)]
line7=[Notes(G/oct1,half_beat),Notes(Bb,half_beat),Notes(C,3*one_beat),Notes(Bb,half_beat),Notes(G/oct1,half_beat),...
    Notes(G/oct1,4*one_beat)]
line8=[Notes(F/oct1,1.5*one_beat),Notes(G/oct1,half_beat),Notes(D/oct1,1.5*one_beat),Notes(Eb/oct1,half_beat),...
    Notes(C/oct1,8*one_beat)]
% High part
line9_octhigher=[Notes(C*oct1,1.5*one_beat),Notes(Eb*oct1,half_beat),Notes(F*oct1,1.5*one_beat),Notes(G*oct1,half_beat),...
    Notes(C*oct1,4*one_beat)]
line9_octlower=[Notes(C,1.5*one_beat),Notes(Eb,half_beat),Notes(F,1.5*one_beat),Notes(G,half_beat),...
    Notes(C,4*one_beat)]
line9=line9_octhigher+line9_octlower
line10_octhigher=[Notes(C*oct1,1.5*one_beat),Notes(Eb*oct1,half_beat),Notes(F*oct1,1.5*one_beat),Notes(Bb*oct2,half_beat),...
    Notes(G*oct1,4*one_beat)]
line10_octlower=[Notes(C,1.5*one_beat),Notes(Eb,half_beat),Notes(F,1.5*one_beat),Notes(Bb*oct1,half_beat),...
    Notes(G,4*one_beat)]
line10=line10_octhigher + line10_octlower
line11=[Notes(G,half_beat),Notes(Bb*oct1,half_beat),Notes(C*oct1,3*one_beat),Notes(Bb*oct1,half_beat),Notes(G,half_beat),...
    Notes(G,4*one_beat)];
soundsc([line9,line10,line11])


%% Left hand 
lline5=[Notes(C/oct2,half_beat),Notes(G/oct2,half_beat), Notes(C/oct1,half_beat),Notes(G/oct2,half_beat),...
    Notes(Eb/oct1,half_beat),Notes(G/oct2,half_beat),Notes(C/oct1,half_beat),Notes(G/oct2,half_beat)]
%lline6=
%soundsc(lline5)
%% Call the lines
%soundsc([line1,line2,line3,line4,line5,line6,line7,line8]);
