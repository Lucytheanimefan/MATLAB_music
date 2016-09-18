%  Fs=8000;
%  Ts=1/Fs;
%  t=[0:Ts:0.3];
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
line12=[Notes(F,1.5*one_beat),Notes(G,half_beat),Notes(D,1.5*one_beat),Notes(Eb,half_beat),Notes(G,8*one_beat)+Notes(C,8*one_beat)+Notes(C*oct1,8*one_beat)]

%no longer theme
line13=[Notes(G/oct1,two_beats),Notes(Eb,two_beats),Notes(D,one_beat),Notes(C,one_beat),Notes(Bb,two_beats),...
    Notes(C,one_beat),Notes(D,one_beat),Notes(Eb,two_beats),...
    Notes(G/oct1,one_beat),Notes(Ab,one_beat),Notes(Bb,two_beats),...
    Notes(F/oct1,two_beats),Notes(C,two_beats),Notes(Eb,one_beat),Notes(D,one_beat),Notes(C,two_beats),...
    Notes(D,two_beats),Notes(Bb,two_beats),Notes(C,two_beats),Notes(Eb,one_beat),Notes(D,one_beat),...
    Notes(G,two_beats)+Notes(Eb/oct1,two_beats),Notes(C,two_beats)+Notes(Eb,two_beats)
    ]
line14=[Notes(D,one_beat)+Notes(Bb,one_beat),Notes(C,one_beat)+Notes(F/oct1,one_beat),Notes(Bb,two_beats)+Notes(G/oct1,two_beats)]
line15=[Notes(Ab,one_beat)+Notes(C,one_beat),Notes(Bb,one_beat)+Notes(D,one_beat),Notes(C,two_beats)+Notes(Eb,two_beats)]
line16=[Notes(Eb/oct1,one_beat)+Notes(G/oct1,one_beat),Notes(F/oct1,one_beat)+Notes(Ab,one_beat),Notes(G/oct1,two_beats)+Notes(Bb,two_beats)]
%40
line17=[Notes(C/oct1,two_beats)+Notes(F/oct1,two_beats),Notes(F/oct1,two_beats)+Notes(C,two_beats)]
%41
line18=[Notes(Eb,one_beat)+Notes(G/oct1,one_beat),Notes(D,one_beat)+Notes(G/oct1,one_beat),Notes(G/oct1,two_beats)+Notes(C,two_beats)]
%42
line19=[Notes(D,two_beats)+Notes(Bb,two_beats),Notes(Bb,two_beats)+Notes(F/oct1,two_beats)]
%43
line20=[Notes(Ab,two_beats)+Notes(C,two_beats),Notes(C,one_beat)+Notes(Eb,one_beat),Notes(Bb,one_beat)+Notes(D,one_beat)]
%44
line21=[Notes(D,two_beats)+Notes(F/oct1,two_beats),Notes(C,6*one_beat)+Notes(F/oct1,6*one_beat)]

%back to theme
lowtheme=[line5,line6,line7,line8]
soundsc([line15,line16,line17,line18,line19,line20,line21,lowtheme])


%% Left hand 
lline5=[Notes(C/oct2,half_beat),Notes(G/oct2,half_beat), Notes(C/oct1,half_beat),Notes(G/oct2,half_beat),...
    Notes(Eb/oct1,half_beat),Notes(G/oct2,half_beat),Notes(C/oct1,half_beat),Notes(G/oct2,half_beat)]
%lline6=
%soundsc(lline5)
%% Call the lines
%soundsc([line1,line2,line3,line4,line5,line6,line7,line8]);
