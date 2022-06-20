function adapmedfilter(testimage,window)
    paddedimage=padarray(testimage,[1,1]);                                  %Padding the array
    [m,n]= size(paddedimage);                                               %Size of the padded matrix
    Wmax=7;                                                                 %Maximum Window size
    output=zeros(m,n);                                                      %Output Image
              
    for i=1:m-(window-1)
        for j=1:n-(window-1)
            C=paddedimage(i:i+(window-1),j:j+(window-1));                   %Window
            D=C(:)';                                                        %Conversion from 2D to 1D
            [u,v]=size(D);
            for p=1:v-1                                                     %Sorting Algorithm
                for q=1:v-1
                    if D(q) > D(q+1)
                        temp= D(q+1);
                        D(q+1)=D(q);
                        D(q)=temp;
                    end
                end
            end        
                  
            zmin=D(u);                                                      %Minimum-value pixel in window
            zmax=D(v);                                                      %Maximum-value pixel in window
            k=round((window*window)/2);     
            zxy=D(k);                                                       %Pixel at (x,y)
            p=round((u+v)/2);               
            if mod(v,2) == 0                                                %Calculation of median
                zmed=D(p+1);
               
            else
                zmed=D(p);
                
            end
            
            A1= zmed-zmin;                                                  % Main Algrithm Starts                                 
            A2= zmed-zmax;
            if A1>0 && A2<0
                B1=zxy-zmin;                
                B2=zxy-zmax;
                if B1>0 && B2<0
                    output(i,j)=zxy;
               else
                    output(i,j)=zmed;
                end
            else
                windowsize=window+1;
                if  windowsize <= Wmax
                    adapmedfilter(testimage,windowsize);                    %Recalling the function
                    return
                else
                    output(i,j)=zmed;
                end
                
            end                                                             %Main Algorithm Ends
            
         end
    end
    oadap=uint8(output); %Converting the output image into uint8 format
    
    figure(1) %Displaying the result
    subplot(1,3,1); imshow('Original.tif'); title('Original Image');
    subplot(1,3,2); imshow('adpmedfilter.tif'); title('Noisy Image');
    subplot(1,3,3);imshow(oadap); title('Adaptive Median Filter Output');
end
