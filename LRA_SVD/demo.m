%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This demo can generate the results from the reference:                  %
% Q.Guo, C.Zhang, Y.Zhang, and H. Liu, "An efficient SVD-based method for %
%   image denoising," IEEE Transactions on Circuits and Systems for Video %
%   Technology, vol. 26, no. 5, pp. 868-880, 2016.                                          %
%   Available at http://dx.doi.org/10.1109/TCSVT.2015.2416631             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = double(imread('barbara.png'));

sigma =20;
randn('seed', 0);                         
y = x + randn(size(x))*sigma;

est = lra_svd_denoising(y,sigma);

figure
imshow(y/255)
figure
imshow(est/255)
