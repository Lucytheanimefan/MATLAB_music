function [y] = Notes(frequency, duration, volume_var, harmonic, freq_mod)
if nargin<5
    freq_mod=-4
end
if nargin<4
    harmonic = 0.9
end
if nargin<3
    volume_var = 2
end

       
t = (0:1/8000:duration-1/8000);
y = (exp(-volume_var*t)).*cos((2*pi*frequency*t)+(cos(2*pi*freq_mod*t))) ...
    + (1/harmonic)*cos((2*pi*frequency*t)+(cos(2*pi*freq_mod*t))); %instrument 

end

