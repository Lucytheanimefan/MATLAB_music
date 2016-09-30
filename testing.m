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

overlap=2;
num_notes = 21
new_length=224*one_beat - (num_notes-1)*overlap;

h=0.3
freq_mod=-7
lineDelay1=[delayNotes(C,1.5*one_beat),delayNotes(Eb,half_beat),delayNotes(F,1.5*one_beat), delayNotes(G,half_beat), delayNotes(C,4*one_beat)];
lineDelay2=[delayNotes(C,1.5*one_beat),delayNotes(Eb,half_beat),delayNotes(F,1.5*one_beat),delayNotes(oct1*Bb, half_beat,0,1.1*0.9, freq_mod,2),...
    delayNotes(G,3*one_beat)]
lineDelay3=[delayNotes(G,half_beat,2,h),delayNotes(oct1*Bb,half_beat,2,h),delayNotes(oct1*C,3*one_beat,0,h*0.9,freq_mod,2),delayNotes(oct1*Bb,half_beat,2,h),...
    delayNotes(G,half_beat,2,h),delayNotes(G,4*one_beat,0.5,h,freq_mod,2)]
lineDelay4=[delayNotes(F,1.5*one_beat,2,1.1*h),delayNotes(G,half_beat,2,1.2*h),delayNotes(D,1.5*one_beat,2,1.5*h),delayNotes(Eb,half_beat,2,2*h),delayNotes(C,8*one_beat)]

lline5_1=[delayNotes(C/oct2,half_beat,left_vol_var),delayNotes(G/oct2,half_beat,left_vol_var), delayNotes(C/oct1,half_beat,left_vol_var),delayNotes(G/oct2,half_beat,left_vol_var),...
    delayNotes(Eb/oct1,half_beat,-4,left_vol_var),delayNotes(G/oct2,half_beat,-4,left_vol_var),delayNotes(C/oct1,half_beat,-4,left_vol_var),delayNotes(G/oct2,half_beat,-4,left_vol_var)]
%11
lline5_2=[delayNotes(Ab/oct2, half_beat),delayNotes(Eb/oct2, half_beat),delayNotes(Ab/oct1, half_beat),delayNotes(Eb/oct2,half_beat),...
    delayNotes(C/oct1,half_beat),delayNotes(Eb/oct2,half_beat),delayNotes(Ab/oct1,half_beat),delayNotes(Eb/oct2, half_beat)];
%10 & l1
lline5=[lline5_1,lline5_2]
%12 
lline6_1=[delayNotes(Bb/oct2,half_beat),delayNotes(F/oct2,half_beat),delayNotes(Bb/oct1, half_beat),delayNotes(F/oct2,half_beat),...
    delayNotes(D/oct1,half_beat),delayNotes(F/oct2, half_beat),delayNotes(Bb/oct1,half_beat),delayNotes(F/oct2,half_beat)];
soundsc([lline5,lline6_1])
    
%lineDelay3,lineDelay4]);
%analyze('guren.wav')


