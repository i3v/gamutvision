function im_cmyk = rgb2cmyk(im_rgb,is_cmyk)
% The replacement for an unknown function
% (unable to find it in Matlab R13SP2 docs or on Mathworks fileexchange)
% 
%  * quick inspection of the compiled exe reveals that original function
%    had 3 input arguments. I only see calls where 2 arguments are used.
%
%  * not sure what was the idea behind this function, why not convert via 
%    icctrans?
%
%  * there's a ton of different rgb 2 cmyk transforms. But this function
%    does not even accept any additinal info. Weird.
%  
%  * OK, I see "% 1 for CMYK; 0 otherwise." original comment, at least
%
%  * icctrans.matlab.pdf says they want RGB in [0...1] and CMYK in [0...100]
%
% ToDo: check if this works at least somehow.
% ToDo: consider using better rgb2cmyk (matlab `makecform` based?)

if is_cmyk
    im_cmyk = im_rgb;
else
    % using most dummy conversion possible    
    assert(isfloat(im_rgb));
    assert(all(im_rgb>=0,'all'));
    assert(all(im_rgb<=1,'all'));
    CMYK = cat(3,1-im_rgb,0);
    CMYK = CMYK * 100;

end