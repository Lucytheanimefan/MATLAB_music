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
%% lower part right hand, left hand starts here
% 10 & 11
line5=[Notes(C/oct1, 1.5*one_beat),Notes(Eb/oct1,half_beat),Notes(F/oct1,1.5*one_beat),Notes(G/oct1,half_beat),...
    Notes(C/oct1,4*one_beat)]
% 12 & 13
line6=[Notes(C/oct1, 1.5*one_beat),Notes(Eb/oct1,half_beat),Notes(F/oct1,1.5*one_beat),Notes(Bb,half_beat),...
    Notes(G/oct1,3*one_beat),Notes(G/oct1,half_beat),Notes(Bb,half_beat)]
% 14 & 15
line7=[Notes(C,3*one_beat),Notes(Bb,half_beat),Notes(G/oct1,half_beat),Notes(G/oct1,4*one_beat)]
% 16 & 17 & 18
line8=[Notes(F/oct1,1.5*one_beat),Notes(G/oct1,half_beat),Notes(D/oct1,1.5*one_beat),Notes(Eb/oct1,half_beat),...
    Notes(C/oct1,8*one_beat)]
% High part
% 19 & 20
line9_octhigher=[Notes(C*oct1,1.5*one_beat),Notes(Eb*oct1,half_beat),Notes(F*oct1,1.5*one_beat),Notes(G*oct1,half_beat),...
    Notes(C*oct1,4*one_beat)]
line9_octlower=[Notes(C,1.5*one_beat),Notes(Eb,half_beat),Notes(F,1.5*one_beat),Notes(G,half_beat),...
    Notes(C,4*one_beat)]
line9=line9_octhigher+line9_octlower
% 21 & 22
line10_octhigher=[Notes(C*oct1,1.5*one_beat),Notes(Eb*oct1,half_beat),Notes(F*oct1,1.5*one_beat),Notes(Bb*oct2,half_beat),...
    Notes(G*oct1,3*one_beat),Notes(G*oct1,half_beat),Notes(Bb*oct2,half_beat)]
line10_octlower=[Notes(C,1.5*one_beat),Notes(Eb,half_beat),Notes(F,1.5*one_beat),Notes(Bb*oct1,half_beat),...
    Notes(G,3*one_beat),Notes(G,half_beat),Notes(Bb*oct1,half_beat)]
line10=line10_octhigher + line10_octlower

% 23 & 24
line11=[Notes(C*oct1,3*one_beat),Notes(Bb*oct1,half_beat),Notes(G,half_beat),Notes(G,4*one_beat)];

%25 & 26 & 27
line12=[Notes(F,1.5*one_beat),Notes(G,half_beat),Notes(D,1.5*one_beat),Notes(Eb,half_beat),Notes(G,8*one_beat)+Notes(C,8*one_beat)+Notes(C*oct1,8*one_beat)]

%no longer theme

% 28 - 36
line13=[Notes(G/oct1,two_beats),Notes(Eb,two_beats),Notes(D,one_beat),Notes(C,one_beat),Notes(Bb,two_beats),... %28 & 29
    Notes(C,one_beat),Notes(D,one_beat),Notes(Eb,two_beats),... %30
    Notes(G/oct1,one_beat),Notes(Ab,one_beat),Notes(Bb,two_beats),... %31
    Notes(F/oct1,two_beats),Notes(C,two_beats),Notes(Eb,one_beat),Notes(D,one_beat),Notes(C,two_beats),...%32 & 33
    Notes(D,two_beats),Notes(Bb,two_beats),Notes(C,two_beats),Notes(Eb,one_beat),Notes(D,one_beat),... %34 & 35
    Notes(G,two_beats)+Notes(Eb/oct1,two_beats),Notes(C,two_beats)+Notes(Eb,two_beats),... %36
    Notes(D,one_beat)+Notes(Bb,one_beat),Notes(C,one_beat)+Notes(F/oct1,one_beat),Notes(Bb,two_beats)+Notes(G/oct1,two_beats),... %37
    Notes(Ab,one_beat)+Notes(C,one_beat),Notes(Bb,one_beat)+Notes(D,one_beat),Notes(C,two_beats)+Notes(Eb,two_beats),...%38
    Notes(Eb/oct1,one_beat)+Notes(G/oct1,one_beat),Notes(F/oct1,one_beat)+Notes(Ab,one_beat),Notes(G/oct1,two_beats)+Notes(Bb,two_beats),...%39
    Notes(C/oct1,two_beats)+Notes(F/oct1,two_beats),Notes(F/oct1,two_beats)+Notes(C,two_beats),...%40
    Notes(Eb,one_beat)+Notes(G/oct1,one_beat),Notes(D,one_beat)+Notes(G/oct1,one_beat),Notes(G/oct1,two_beats)+Notes(C,two_beats),...%42
    Notes(D,two_beats)+Notes(Bb,two_beats),Notes(Bb,two_beats)+Notes(F/oct1,two_beats),...%42
    Notes(Ab,two_beats)+Notes(C,two_beats),Notes(C,one_beat)+Notes(Eb,one_beat),Notes(Bb,one_beat)+Notes(D,one_beat),...%43
    Notes(D,two_beats)+Notes(F/oct1,two_beats),Notes(C,6*one_beat)+Notes(F/oct1,6*one_beat), ...%44&45
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
%soundsc([line15,line16,line17,line18,line19,line20,line21,lowtheme])


%% Left hand 
%10
lline5_1=[Notes(C/oct2,half_beat),Notes(G/oct2,half_beat), Notes(C/oct1,half_beat),Notes(G/oct2,half_beat),...
    Notes(Eb/oct1,half_beat),Notes(G/oct2,half_beat),Notes(C/oct1,half_beat),Notes(G/oct2,half_beat)]
%11
lline5_2=[Notes(Ab/oct2, half_beat),Notes(Eb/oct2, half_beat),Notes(Ab/oct1, half_beat),Notes(Eb/oct2,half_beat),...
    Notes(C/oct1,half_beat),Notes(Eb/oct2,half_beat),Notes(Ab/oct1,half_beat),Notes(Eb/oct2, half_beat)];
%10 & l1
lline5=[lline5_1,lline5_2]
%12 
lline6_1=[Notes(Bb/oct2,half_beat),Notes(F/oct2,half_beat),Notes(Bb/oct1, half_beat),Notes(F/oct2,half_beat),...
    Notes(D/oct1,half_beat),Notes(F/oct2, half_beat),Notes(Bb/oct1,half_beat),Notes(F/oct2,half_beat)];
%13
lline6_2 = [Notes(Eb/(3*oct1), half_beat),Notes(Bb/oct2, half_beat),Notes(Eb/oct2, half_beat),Notes(Bb/oct2, half_beat),...
    Notes(G/oct2,half_beat),Notes(Bb/oct2, half_beat),Notes(Eb/oct2, half_beat),Notes(Bb/oct2, half_beat)];
% 12 & 13
lline6 = [lline6_1, lline6_2]
% 14
lline7_1=lline5_2;
%15
lline7_2=lline5_1
% 14 & 15
lline7=[lline7_1, lline7_2]
% 16 = 12
lline8_1 = lline6_1
% 17 = 11
lline8_2 = lline5_2
% 18 
lline8_3= lline8_2
lline8= [lline8_1, lline8_2, lline8_3]
% 19 & 20
lline9=lline5
% 21 & 22 = 12 & 13
lline10 = lline6
% 23 & 24 = 14 & 15
lline11 = lline7
% 25 & 26 & 27= 16 & 17
lline12 = lline8
%% left hand melody stops
% 28 & 29 = 15 & 16
lline13_1 = [lline7_2,lline6_1]
% 30 = 14
lline13_2 = lline7_1
% 31 = 13 
lline13_3 = lline6_2
% 32 
lline13_4=[Notes(F/(3*oct1),half_beat),Notes(C/oct2, half_beat), Notes(F/oct2, half_beat),Notes(C/oct2, half_beat),...
    Notes(Ab/oct1,half_beat),Notes(C/oct2, half_beat),Notes(F/oct2, half_beat),Notes(C/oct2, half_beat)]
% 33 & 34 = 15 & 16
lline13_5 = lline13_1;
% 35
lline13_6 = [Notes(Ab/(oct2),half_beat),Notes(Eb/oct2,half_beat),Notes(Ab/oct1,half_beat),Notes(Eb/oct2,half_beat),...
    Notes(B/(oct2),half_beat),Notes(F/oct2,half_beat),Notes(Bb/oct1,half_beat),Notes(F/oct2,half_beat)]
% 37 -38
lline13_7 = lline13_5
% 39 = 22 = 13
lline13_8 = lline6_2
% 40 = 32
lline13_9 = lline13_4
% 41 & 42 = 33 & 34
lline13_10 = lline13_5
% 43 & 44 = 35 & 36
lline13_11 = [lline13_6, lline5_1]
% 45
lline13_12 = [Notes(C/oct2,half_beat),Notes(G/oct2,half_beat), Notes(C/oct1,half_beat),Notes(G/oct2,half_beat),...
    Notes(Eb,half_beat),Notes(G, 1.5*one_beat)]
% 28-45
lline13 = [lline13_1, lline13_2, lline13_3, lline13_3, lline13_4, lline13_5, lline13_6, lline13_7,lline13_8, lline13_9,...
    lline13_10, lline13_11, lline13_12] 
%% Call the lines
music_vector=[lline5+line5,lline6+line6, lline7+line7, lline8 + line8, lline9 + line9, lline10 + line10, lline11 + line11,...
    lline12+ line12, line13 + lline13]
soundsc(lline13 + line13);
%soundsc([line1,line2,line3,line4,line5,line6,line7,line8,line9,line10,line11,line12,line13,line14,...
%    line15,line16,line17,line18,line19,line20,line21,lowtheme]);
