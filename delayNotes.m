function [y] = delayNotes(frequency, duration, volume_var, harmonic, freq_mod, delay)
if nargin<6 || strcmp(delay,'def')
    delay=0.5
end
if nargin<5 || strcmp(freq_mod,'def')
    freq_mod=-4
end
if nargin<4 || strcmp(harmonic,'def')
    harmonic = 5
end
if nargin<3||strcmp(volume_var,'def')
    volume_var = 2
end

overtone = 0.8
t = (0:1/8000:duration-1/8000); %time

y_norm = (exp(-volume_var*(t-delay))).*cos((2*pi*frequency*(t-delay))+(cos(2*pi*freq_mod*(t-delay)))) ...
    + (1/harmonic)*cos((2*pi*frequency*(t-delay))+(cos(2*pi*freq_mod*(t-delay)))); 

y_octave = overtone*((exp(-volume_var*(t-delay))).*cos((2*pi*frequency*2*(t-delay))+(cos(2*pi*freq_mod*(t-delay)))) ...
    + (1/harmonic)*cos((2*pi*frequency*2*(t-delay))+(cos(2*pi*freq_mod*(t-delay))))); 

sig = y_octave + y_norm
A = linspace(0, 0.6, (length(sig)*0.7)); %rise 20% of signal
D = linspace(0.6, 0.5,(length(sig)*0.09)); %drop of 5% of signal
S = linspace(0.5, 0.5,(length(sig)*0.09)); %delay of 40% of signal
R = linspace(0.5, 0,(length(sig)*0.09)); %drop of 35% of signal

ADSR = [A D S R] ; %make a matrix

dif = length(sig) - length(ADSR); %find out the difference

x = cat(2, ADSR, zeros(1,dif));

y = sig .* x

end
