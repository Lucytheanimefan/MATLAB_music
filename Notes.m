function [y] = Notes(frequency, duration, volume_var, harmonic, freq_mod, delay)
if nargin<6 || strcmp(delay,'def')
    delay=0.1
end
if nargin<5 || strcmp(freq_mod,'def')
    freq_mod=-4
end
if nargin<4 || strcmp(harmonic,'def')
    harmonic = 0.9
end
if nargin<3||strcmp(volume_var,'def')
    volume_var = 2
end
     
t = (0:1/8000:duration-1/8000); %time

y = (exp(-volume_var*(t-delay))).*cos((2*pi*frequency*(t-delay))+(cos(2*pi*freq_mod*(t-delay)))) ...
    + (1/harmonic)*cos((2*pi*frequency*(t-delay))+(cos(2*pi*freq_mod*(t-delay))));  

end

