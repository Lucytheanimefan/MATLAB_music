% Notes
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

%constants
oct1=2;
oct2=2*2;
one_beat=1;
quarter_beat=0.25*one_beat;
half_beat=0.5*one_beat;
two_beats=2*one_beat;



h=0.3 %harmonic value
freq_mod=-6 %frequency modulation

long_rest = Notes(0,16*one_beat); %this is how long it takes for the second melody to kick in. 

%% Right hand 
line1=[Notes(C,1.5*one_beat),Notes(Eb,half_beat),Notes(F,1.5*one_beat), Notes(G,half_beat), Notes(C,4*one_beat)];
line2=[Notes(C,1.5*one_beat),Notes(Eb,half_beat),Notes(F,1.5*one_beat),Notes(oct1*Bb, half_beat,0,1.1*0.9, freq_mod,2),...
    Notes(G,3*one_beat)]
line3=[Notes(G,half_beat,2,h),Notes(oct1*Bb,half_beat,2,h),Notes(oct1*C,3*one_beat,0,h*0.9,freq_mod,2),Notes(oct1*Bb,half_beat,2,h),...
    Notes(G,half_beat,2,h),Notes(G,4*one_beat,0.5,h,freq_mod,2)]
line4=[Notes(F,1.5*one_beat,2,1.1*h),Notes(G,half_beat,2,1.2*h),Notes(D,1.5*one_beat,2,1.5*h),Notes(Eb,half_beat,2,2*h),Notes(C,8*one_beat)]

%% lower part right hand, left hand starts here
% 10 & 11
line5=[Notes(C/oct1, 1.5*one_beat,2,h/3),Notes(Eb/oct1,half_beat,2,h/3),Notes(F/oct1,1.5*one_beat,2,h/3),Notes(G/oct1,half_beat,2,h/3),...
    Notes(C/oct1,4*one_beat,2,h/3)]
% 12 & 13
line6=[Notes(C/oct1, 1.5*one_beat,2,h/3),Notes(Eb/oct1,half_beat,2,h/3),Notes(F/oct1,1.5*one_beat,2,h/3),Notes(Bb,half_beat,2,h/3),...
    Notes(G/oct1,3*one_beat,2,h/3,freq_mod),Notes(G/oct1,half_beat,2,h/3),Notes(Bb,half_beat,2,h/3)]
% 14 & 15
line7=[Notes(C,3*one_beat,2,0.05,freq_mod),Notes(Bb,half_beat,2,h/3),Notes(G/oct1,half_beat,2,h/3),Notes(G/oct1,4*one_beat,2,h/3,freq_mod)]
% 16 & 17 & 18
line8=[Notes(F/oct1,1.5*one_beat,2,h/3),Notes(G/oct1,half_beat,2,h/3),Notes(D/oct1,1.5*one_beat,2,h/3),Notes(Eb/oct1,half_beat,2,h/3),...
    Notes(C/oct1,8*one_beat,2,h/3,freq_mod)]
% High part
% 19 & 20
line9_octhigher=[Notes(C*oct1,1.5*one_beat),Notes(Eb*oct1,half_beat),Notes(F*oct1,1.5*one_beat),Notes(G*oct1,half_beat),...
    Notes(C*oct1,4*one_beat,2,h*2,freq_mod)]
line9_octlower=[Notes(C,1.5*one_beat),Notes(Eb,half_beat),Notes(F,1.5*one_beat),Notes(G,half_beat),...
    Notes(C,4*one_beat,h*2,freq_mod)]
line9=line9_octhigher+line9_octlower
% 21 & 22
line10_octhigher=[Notes(C*oct1,1.5*one_beat),Notes(Eb*oct1,half_beat),Notes(F*oct1,1.5*one_beat),Notes(Bb*oct2,half_beat),...
    Notes(G*oct1,3*one_beat,h,freq_mod),Notes(G*oct1,half_beat),Notes(Bb*oct2,half_beat)]
line10_octlower=[Notes(C,1.5*one_beat),Notes(Eb,half_beat),Notes(F,1.5*one_beat),Notes(Bb*oct1,half_beat),...
    Notes(G,3*one_beat,h,freq_mod),Notes(G,half_beat),Notes(Bb*oct1,half_beat)]
line10=line10_octhigher + line10_octlower

% 23 & 24
line11=[Notes(C*oct1,3*one_beat,0),Notes(Bb*oct1,half_beat),Notes(G,half_beat),Notes(G,4*one_beat)];

%25 & 26 & 27
line12=[Notes(F,1.5*one_beat),Notes(G,half_beat),Notes(D,1.5*one_beat),Notes(Eb,half_beat),Notes(G,8*one_beat,0)+Notes(C,8*one_beat,0)+Notes(C*oct1,8*one_beat,0)]

%no longer theme

% 28 - 36
line13=[Notes(G/oct1,two_beats,'def','def',freq_mod),Notes(Eb,two_beats,'def','def',freq_mod),+...
    Notes(D,one_beat,'def','def',freq_mod),Notes(C,one_beat,'def','def',freq_mod),Notes(Bb,two_beats,'def','def',freq_mod),... %28 & 29
    Notes(C,one_beat,'def','def',freq_mod),Notes(D,one_beat,'def','def',freq_mod),Notes(Eb,two_beats,'def','def',freq_mod),... %30
    Notes(G/oct1,one_beat,'def','def',freq_mod),Notes(Ab,one_beat,'def','def',freq_mod),Notes(Bb,two_beats,'def','def',freq_mod),... %31
    Notes(F/oct1,two_beats,'def','def',freq_mod),Notes(C,two_beats,'def','def',freq_mod),Notes(Eb,one_beat,'def','def',freq_mod),...
    Notes(D,one_beat,'def','def',freq_mod),Notes(C,two_beats,'def','def',freq_mod),...%32 & 33
    Notes(D,two_beats,'def','def',freq_mod),Notes(Bb,two_beats,'def','def',freq_mod),Notes(C,two_beats,'def','def',freq_mod),Notes(Eb,one_beat,'def','def',freq_mod),Notes(D,one_beat,'def','def',freq_mod),... %34 & 35
    Notes(G,two_beats,'def','def',freq_mod)+Notes(Eb/oct1,two_beats,'def','def',freq_mod),Notes(C,two_beats,'def','def',freq_mod)+Notes(Eb,two_beats,'def','def',freq_mod),... %36
    Notes(D,one_beat,'def','def',freq_mod)+Notes(Bb,one_beat,'def','def',freq_mod),Notes(C,one_beat,'def','def',freq_mod)+Notes(F/oct1,one_beat,'def','def',freq_mod),Notes(Bb,two_beats,'def','def',freq_mod)+Notes(G/oct1,two_beats,'def','def',freq_mod),... %37
    Notes(Ab,one_beat,'def','def',freq_mod)+Notes(C,one_beat,'def','def',freq_mod),Notes(Bb,one_beat,'def','def',freq_mod)+Notes(D,one_beat,'def','def',freq_mod),Notes(C,two_beats,'def','def',freq_mod)+Notes(Eb,two_beats,'def','def',freq_mod),...%38
    Notes(Eb/oct1,one_beat,'def','def',freq_mod)+Notes(G/oct1,one_beat,'def','def',freq_mod),Notes(F/oct1,one_beat,'def','def',freq_mod)+Notes(Ab,one_beat,'def','def',freq_mod),Notes(G/oct1,two_beats)+Notes(Bb,two_beats,'def','def',freq_mod),...%39
    Notes(C/oct1,two_beats,'def','def',freq_mod)+Notes(F/oct1,two_beats,'def','def',freq_mod),Notes(F/oct1,two_beats,'def','def',freq_mod)+Notes(C,two_beats,'def','def',freq_mod),...%40
    Notes(Eb,one_beat,'def','def',freq_mod)+Notes(G/oct1,one_beat,'def','def',freq_mod),Notes(D,one_beat,'def','def',freq_mod)+Notes(G/oct1,one_beat),Notes(G/oct1,two_beats,'def','def',freq_mod)+Notes(C,two_beats,'def','def',freq_mod),...%42
    Notes(D,two_beats,'def','def',freq_mod)+Notes(Bb,two_beats,'def','def',freq_mod),Notes(Bb,two_beats,'def','def',freq_mod)+Notes(F/oct1,two_beats,'def','def',freq_mod),...%42
    Notes(Ab,two_beats,'def','def',freq_mod)+Notes(C,two_beats,'def','def',freq_mod),Notes(C,one_beat,'def','def',freq_mod)+Notes(Eb,one_beat,'def','def',freq_mod),Notes(Bb,one_beat,'def','def',freq_mod)+Notes(D,one_beat,'def','def',freq_mod),...%43
    Notes(D,two_beats,'def','def',freq_mod)+Notes(F/oct1,two_beats,'def','def',freq_mod),Notes(C,6*one_beat,'def','def',freq_mod)+Notes(F/oct1,6*one_beat,'def','def',freq_mod), ...%44&45
    ]
%back to theme
line14=[Notes(C/oct1,one_beat*8,0,0.9,freq_mod)]
lowtheme=[line5,line6,line7,line8,line14]
lowtheme_wRest=[line5,line6,line7,line8,line14,long_rest]
%soundsc([line15,line16,line17,line18,line19,line20,line21,lowtheme])


%% Left hand 
%10
left_vol_var = 5
lline5_1=[leftHandNotes(C/oct2,half_beat,left_vol_var),leftHandNotes(G/oct2,half_beat,left_vol_var), leftHandNotes(C/oct1,half_beat,left_vol_var),leftHandNotes(G/oct2,half_beat,left_vol_var),...
    leftHandNotes(Eb/oct1,half_beat,-4,left_vol_var),leftHandNotes(G/oct2,half_beat,-4,left_vol_var),leftHandNotes(C/oct1,half_beat,-4,left_vol_var),leftHandNotes(G/oct2,half_beat,-4,left_vol_var)]
%11
lline5_2=[leftHandNotes(Ab/oct2, half_beat),leftHandNotes(Eb/oct2, half_beat),leftHandNotes(Ab/oct1, half_beat),leftHandNotes(Eb/oct2,half_beat),...
    leftHandNotes(C/oct1,half_beat),leftHandNotes(Eb/oct2,half_beat),leftHandNotes(Ab/oct1,half_beat),leftHandNotes(Eb/oct2, half_beat)];
%10 & l1
lline5=[lline5_1,lline5_2]
%12 
lline6_1=[leftHandNotes(Bb/oct2,half_beat),leftHandNotes(F/oct2,half_beat),leftHandNotes(Bb/oct1, half_beat),leftHandNotes(F/oct2,half_beat),...
    leftHandNotes(D/oct1,half_beat),leftHandNotes(F/oct2, half_beat),leftHandNotes(Bb/oct1,half_beat),leftHandNotes(F/oct2,half_beat)];
%13
lline6_2 = [leftHandNotes(Eb/(3*oct1), half_beat),leftHandNotes(Bb/oct2, half_beat),leftHandNotes(Eb/oct2, half_beat),leftHandNotes(Bb/oct2, half_beat),...
    leftHandNotes(G/oct2,half_beat),leftHandNotes(Bb/oct2, half_beat),leftHandNotes(Eb/oct2, half_beat),leftHandNotes(Bb/oct2, half_beat)];
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
lline13_4=[leftHandNotes(F/(3*oct1),half_beat),leftHandNotes(C/oct2, half_beat), leftHandNotes(F/oct2, half_beat),leftHandNotes(C/oct2, half_beat),...
    leftHandNotes(Ab/oct1,half_beat),leftHandNotes(C/oct2, half_beat),leftHandNotes(F/oct2, half_beat),leftHandNotes(C/oct2, half_beat)]
% 33 & 34 = 15 & 16
lline13_5 = lline13_1;
% 35
lline13_6 = [leftHandNotes(Ab/(oct2),half_beat),leftHandNotes(Eb/oct2,half_beat),leftHandNotes(Ab/oct1,half_beat),leftHandNotes(Eb/oct2,half_beat),...
    leftHandNotes(B/(oct2),half_beat),leftHandNotes(F/oct2,half_beat),leftHandNotes(Bb/oct1,half_beat),leftHandNotes(F/oct2,half_beat)]
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
lline13_12 = [leftHandNotes(C/oct2,half_beat),leftHandNotes(G/oct2,half_beat), leftHandNotes(C/oct1,half_beat),leftHandNotes(G/oct2,half_beat),...
    leftHandNotes(Eb,half_beat),leftHandNotes(G, 1.5*one_beat)]
% 28-45
lline13 = [lline13_1, lline13_2, lline13_3, lline13_3, lline13_4, lline13_5, lline13_6, lline13_7,lline13_8, lline13_9,...
    lline13_10, lline13_11, lline13_12] 
%46-end
%46
lline14_1=[leftHandNotes(C/oct2,4*one_beat)+leftHandNotes(Eb/oct1,one_beat*4)+leftHandNotes(G/oct1, one_beat*4)] % should be legato kind of, not chord
%47
lline14_2=[leftHandNotes(Ab/oct1,one_beat*2)+leftHandNotes(Eb/oct1,one_beat*2)+leftHandNotes(C/oct2,one_beat*2)+leftHandNotes(Ab/oct1,one_beat*2),...
    leftHandNotes(G/oct2,one_beat),leftHandNotes(Bb/oct2,one_beat)]
%48
lline14_3=[leftHandNotes(Bb/oct1,one_beat*4)+leftHandNotes(F/oct2,one_beat*4)+leftHandNotes(D/oct2,one_beat*4)+leftHandNotes(Bb/oct2,one_beat*4)]
%49
lline14_4=[leftHandNotes(Eb/(oct2),half_beat),leftHandNotes(G/oct2,half_beat),leftHandNotes(Bb/oct1,half_beat),leftHandNotes(Eb/oct1,half_beat),...
    leftHandNotes(G/oct1,2*one_beat)]
%50 & 51 & 52 & 53= 11 & 10 & 12 & 11
lline14_5 = [lline5_2,lline5_1,lline6_1,lline5_2,lline5_2,lline5_1,...
    leftHandNotes(C/oct2,4*one_beat)+leftHandNotes(G/oct2,4*one_beat)+leftHandNotes(C/oct1,4*one_beat)+leftHandNotes(Eb/oct1,4*one_beat,3)]
lline14=[lline14_1,lline14_2,lline14_3,lline14_4,lline14_5]
lline14_wRest=[lline14_1,lline14_2,lline14_3,lline14_4,lline14_5,long_rest]

%% Delayed version
%% Right hand 
lineDelay1=[delayNotes(C,1.5*one_beat),delayNotes(Eb,half_beat),delayNotes(F,1.5*one_beat), delayNotes(G,half_beat), delayNotes(C,4*one_beat)];
lineDelay2=[delayNotes(C,1.5*one_beat),delayNotes(Eb,half_beat),delayNotes(F,1.5*one_beat),delayNotes(oct1*Bb, half_beat,0,1.1*0.9, freq_mod,2),...
    delayNotes(G,3*one_beat)]
lineDelay3=[delayNotes(G,half_beat,2,h),delayNotes(oct1*Bb,half_beat,2,h),delayNotes(oct1*C,3*one_beat,0,h*0.9,freq_mod,2),delayNotes(oct1*Bb,half_beat,2,h),...
    delayNotes(G,half_beat,2,h),delayNotes(G,4*one_beat,0.5,h,freq_mod,2)]
lineDelay4=[delayNotes(F,1.5*one_beat,2,1.1*h),delayNotes(G,half_beat,2,1.2*h),delayNotes(D,1.5*one_beat,2,1.5*h),delayNotes(Eb,half_beat,2,2*h),delayNotes(C,8*one_beat)]

%% lower part right hand, left hand starts here
% 10 & 11
lineDelay5=[delayNotes(C/oct1, 1.5*one_beat,2,h/3),delayNotes(Eb/oct1,half_beat,2,h/3),delayNotes(F/oct1,1.5*one_beat,2,h/3),delayNotes(G/oct1,half_beat,2,h/3),...
    delayNotes(C/oct1,4*one_beat,2,h/3)]
% 12 & 13
lineDelay6=[delayNotes(C/oct1, 1.5*one_beat,2,h/3),delayNotes(Eb/oct1,half_beat,2,h/3),delayNotes(F/oct1,1.5*one_beat,2,h/3),delayNotes(Bb,half_beat,2,h/3),...
    delayNotes(G/oct1,3*one_beat,2,h/3,freq_mod),delayNotes(G/oct1,half_beat,2,h/3),delayNotes(Bb,half_beat,2,h/3)]
% 14 & 15
lineDelay7=[delayNotes(C,3*one_beat,2,0.05,freq_mod),delayNotes(Bb,half_beat,2,h/3),delayNotes(G/oct1,half_beat,2,h/3),delayNotes(G/oct1,4*one_beat,2,h/3,freq_mod)]
% 16 & 17 & 18
lineDelay8=[delayNotes(F/oct1,1.5*one_beat,2,h/3),delayNotes(G/oct1,half_beat,2,h/3),delayNotes(D/oct1,1.5*one_beat,2,h/3),delayNotes(Eb/oct1,half_beat,2,h/3),...
    delayNotes(C/oct1,8*one_beat,2,h/3,freq_mod)]
% High part
% 19 & 20
lineDelay9_octhigher=[delayNotes(C*oct1,1.5*one_beat),delayNotes(Eb*oct1,half_beat),delayNotes(F*oct1,1.5*one_beat),delayNotes(G*oct1,half_beat),...
    delayNotes(C*oct1,4*one_beat,2,h*2,freq_mod)]
lineDelay9_octlower=[delayNotes(C,1.5*one_beat),delayNotes(Eb,half_beat),delayNotes(F,1.5*one_beat),delayNotes(G,half_beat),...
    delayNotes(C,4*one_beat,h*2,freq_mod)]
lineDelay9=lineDelay9_octhigher+lineDelay9_octlower
% 21 & 22
lineDelay10_octhigher=[delayNotes(C*oct1,1.5*one_beat),delayNotes(Eb*oct1,half_beat),delayNotes(F*oct1,1.5*one_beat),delayNotes(Bb*oct2,half_beat),...
    delayNotes(G*oct1,3*one_beat,h,freq_mod),delayNotes(G*oct1,half_beat),delayNotes(Bb*oct2,half_beat)]
lineDelay10_octlower=[delayNotes(C,1.5*one_beat),delayNotes(Eb,half_beat),delayNotes(F,1.5*one_beat),delayNotes(Bb*oct1,half_beat),...
    delayNotes(G,3*one_beat,h,freq_mod),delayNotes(G,half_beat),delayNotes(Bb*oct1,half_beat)]
lineDelay10=lineDelay10_octhigher + lineDelay10_octlower

% 23 & 24
lineDelay11=[delayNotes(C*oct1,3*one_beat,0),delayNotes(Bb*oct1,half_beat),delayNotes(G,half_beat),delayNotes(G,4*one_beat)];

%25 & 26 & 27
lineDelay12=[delayNotes(F,1.5*one_beat),delayNotes(G,half_beat),delayNotes(D,1.5*one_beat),delayNotes(Eb,half_beat),delayNotes(G,8*one_beat,0)+delayNotes(C,8*one_beat,0)+delayNotes(C*oct1,8*one_beat,0)]

%no longer theme

% 28 - 36
lineDelay13=[delayNotes(G/oct1,two_beats,'def','def',freq_mod),delayNotes(Eb,two_beats,'def','def',freq_mod),+...
    delayNotes(D,one_beat,'def','def',freq_mod),delayNotes(C,one_beat,'def','def',freq_mod),delayNotes(Bb,two_beats,'def','def',freq_mod),... %28 & 29
    delayNotes(C,one_beat,'def','def',freq_mod),delayNotes(D,one_beat,'def','def',freq_mod),delayNotes(Eb,two_beats,'def','def',freq_mod),... %30
    delayNotes(G/oct1,one_beat,'def','def',freq_mod),delayNotes(Ab,one_beat,'def','def',freq_mod),delayNotes(Bb,two_beats,'def','def',freq_mod),... %31
    delayNotes(F/oct1,two_beats,'def','def',freq_mod),delayNotes(C,two_beats,'def','def',freq_mod),delayNotes(Eb,one_beat,'def','def',freq_mod),...
    delayNotes(D,one_beat,'def','def',freq_mod),delayNotes(C,two_beats,'def','def',freq_mod),...%32 & 33
    delayNotes(D,two_beats,'def','def',freq_mod),delayNotes(Bb,two_beats,'def','def',freq_mod),delayNotes(C,two_beats,'def','def',freq_mod),delayNotes(Eb,one_beat,'def','def',freq_mod),delayNotes(D,one_beat,'def','def',freq_mod),... %34 & 35
    delayNotes(G,two_beats,'def','def',freq_mod)+delayNotes(Eb/oct1,two_beats,'def','def',freq_mod),delayNotes(C,two_beats,'def','def',freq_mod)+delayNotes(Eb,two_beats,'def','def',freq_mod),... %36
    delayNotes(D,one_beat,'def','def',freq_mod)+delayNotes(Bb,one_beat,'def','def',freq_mod),delayNotes(C,one_beat,'def','def',freq_mod)+delayNotes(F/oct1,one_beat,'def','def',freq_mod),delayNotes(Bb,two_beats,'def','def',freq_mod)+delayNotes(G/oct1,two_beats,'def','def',freq_mod),... %37
    delayNotes(Ab,one_beat,'def','def',freq_mod)+delayNotes(C,one_beat,'def','def',freq_mod),delayNotes(Bb,one_beat,'def','def',freq_mod)+delayNotes(D,one_beat,'def','def',freq_mod),delayNotes(C,two_beats,'def','def',freq_mod)+delayNotes(Eb,two_beats,'def','def',freq_mod),...%38
    delayNotes(Eb/oct1,one_beat,'def','def',freq_mod)+delayNotes(G/oct1,one_beat,'def','def',freq_mod),delayNotes(F/oct1,one_beat,'def','def',freq_mod)+delayNotes(Ab,one_beat,'def','def',freq_mod),delayNotes(G/oct1,two_beats)+delayNotes(Bb,two_beats,'def','def',freq_mod),...%39
    delayNotes(C/oct1,two_beats,'def','def',freq_mod)+delayNotes(F/oct1,two_beats,'def','def',freq_mod),delayNotes(F/oct1,two_beats,'def','def',freq_mod)+delayNotes(C,two_beats,'def','def',freq_mod),...%40
    delayNotes(Eb,one_beat,'def','def',freq_mod)+delayNotes(G/oct1,one_beat,'def','def',freq_mod),delayNotes(D,one_beat,'def','def',freq_mod)+delayNotes(G/oct1,one_beat),delayNotes(G/oct1,two_beats,'def','def',freq_mod)+delayNotes(C,two_beats,'def','def',freq_mod),...%42
    delayNotes(D,two_beats,'def','def',freq_mod)+delayNotes(Bb,two_beats,'def','def',freq_mod),delayNotes(Bb,two_beats,'def','def',freq_mod)+delayNotes(F/oct1,two_beats,'def','def',freq_mod),...%42
    delayNotes(Ab,two_beats,'def','def',freq_mod)+delayNotes(C,two_beats,'def','def',freq_mod),delayNotes(C,one_beat,'def','def',freq_mod)+delayNotes(Eb,one_beat,'def','def',freq_mod),delayNotes(Bb,one_beat,'def','def',freq_mod)+delayNotes(D,one_beat,'def','def',freq_mod),...%43
    delayNotes(D,two_beats,'def','def',freq_mod)+delayNotes(F/oct1,two_beats,'def','def',freq_mod),delayNotes(C,6*one_beat,'def','def',freq_mod)+delayNotes(F/oct1,6*one_beat,'def','def',freq_mod), ...%44&45
    ]
%back to theme
lineDelay14=[delayNotes(C/oct1,one_beat*8,0,0.9,freq_mod)]
lowtheme=[lineDelay5,lineDelay6,lineDelay7,lineDelay8,lineDelay14]
lowtheme_wRest=[lineDelay5,lineDelay6,lineDelay7,lineDelay8,lineDelay14,long_rest]
%soundsc([lineDelay15,lineDelay16,lineDelay17,lineDelay18,lineDelay19,lineDelay20,lineDelay21,lowtheme])



%% Call the lines
music_vector_first=[line1,line2,line3,line4,lline5+line5,lline6+line6, lline7+line7, lline8 + line8,...
    lline9 + line9, lline10 + line10, lline11 + line11,...
    lline12+ line12, line13 + lline13, lowtheme_wRest + lline14_wRest]

% The same melody as above, but without the left hand part. 
% Creates the effect of a staggered melody 
music_vector_delayed=[long_rest,lineDelay1,lineDelay2,lineDelay3,lineDelay4,lineDelay5,lineDelay6, lineDelay7, lineDelay8,...
   lineDelay9, lineDelay10, lineDelay11,...
   lineDelay12, lineDelay13, lowtheme]

music_vector = music_vector_first + music_vector_delayed
soundsc(music_vector+music_vector_delayed);

songscaled = music_vector/(max(abs(music_vector)))
audiowrite('guren.wav',songscaled,8000)
