function [y] = Notes(frequency, duration)
t = (0:1/8000:duration-1/8000);
y = cos(2*pi*frequency*t);
end

