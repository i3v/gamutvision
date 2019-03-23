function im_out = imgrescale(im_in, out_sz)
% The replacement for an unknown function
% (unable to find it in Matlab R13SP2 docs or on Mathworks fileexchange)
% presumably, that was a bilinear interp

im_out = imresize(im_in,out_sz,'bilinear');

end