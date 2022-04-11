function f=conv2_manual(image_mat, kernel)
   tic
   kernelsize = size(kernel);
   % pad the image so that the filter can run over the edge
   padsize = floor(kernelsize/2);
   paddedimage = padarray(image_mat, padsize,'replicate','both');
   s0 = size(image_mat);
   outpict = zeros(s0,'double');
   os = kernelsize-1;
   paddedimage = double(paddedimage);
   for m = 1:s0(1)
      for n = 1:s0(2)
         sample = paddedimage(m:(m+os(1)),n:(n+os(2)));
            outpict(m,n) = sum(sum(sample.*kernel));
      end
   end
   outpict = uint8(outpict);
   f=outpict;
   toc
end
