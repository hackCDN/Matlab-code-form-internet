function [ patch ] = inversepatch( patch_nub,orgimage_x,orgimage_y,color_orgimage)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

% orgimage = imread('2_1_sc10.jpg');
% orgimage = imread('dataimage/SC10/SC10ucid00011.tif');
% orgimage = rgb2gray(orgimage);
% figure(2);
% imshow(orgimage);
orgimage = double(color_orgimage);

for color=1:3;
p=orgimage_x;
q=orgimage_y;
minisquare(1,1,color) = orgimage(p,q,color);
minisquare(1,2,color) = orgimage(p,q+1,color);
minisquare(2,1,color) = orgimage(p+1,q,color);
minisquare(2,2,color) = orgimage(p+1,q+1,color);

    switch patch_nub
% Color Image Patch with Lable
% example:
% patch(:,:,color)=[255 0 0;255 0 0];
% patch(:,:,color)=[255 0 0;0 255 0];
% patch(:,:,color)=[255 0 0;0 0 255];
% patch(:,:,color)=[0 255 0;255 0 0];
% patch(:,:,color)=[0 255 0;0 255 0];
% patch(:,:,color)=[0 255 0;0 0 255];
% patch(:,:,color)=[0 0 255;255 0 0];
% patch(:,:,color)=[0 0 255;0 255 0];
% patch(:,:,color)=[0 0 255;0 0 255];

        case {1}
            if (color==1||color==3)
                patch(:,:,color)=[round(((orgimage(p,q-1,color)+minisquare(1,1,color))/2)) minisquare(1,1,color) minisquare(1,2,color);round(((orgimage(p+1,q-1,color)+minisquare(2,1,color))/2)) minisquare(2,1,color) minisquare(2,2,color)];
            elseif (color==2)
                patch(:,:,color)=[255 minisquare(1,1,color) minisquare(1,2,color);255 minisquare(2,1,color) minisquare(2,2,color)];
            end
        case {2}
             if (color==1||color==3)
                 patch(:,:,color)=[round(((orgimage(p,q-1,color)+minisquare(1,1,color))/2)) minisquare(1,1,color) minisquare(1,2,color);minisquare(2,1,color) round(((minisquare(2,1,color)+minisquare(2,2,color))/2)) minisquare(2,2,color)];      
             elseif (color==2)
                 patch(:,:,color)=[255 minisquare(1,1,color) minisquare(1,2,color);minisquare(2,1,color) 255 minisquare(2,2,color)];                  
             end
        case {3}
            if (color==1||color==3)
                patch(:,:,color)=[round(((orgimage(p,q-1,color)+minisquare(1,1,color))/2)) minisquare(1,1,color) minisquare(1,2,color);minisquare(2,1,color) minisquare(2,2,color) round(((orgimage(p+1,q+2,color)+minisquare(2,2,color))/2))];
            elseif (color==2)
                patch(:,:,color)=[255 minisquare(1,1,color) minisquare(1,2,color);minisquare(2,1,color) minisquare(2,2,color) 255];           
           end
        case {4}
            if (color==1||color==3)
                patch(:,:,color)=[minisquare(1,1,color) round(((minisquare(1,1,color)+minisquare(1,2,color))/2)) minisquare(1,2,color);round(((orgimage(p+1,q-1,color)+minisquare(2,1,color))/2)) minisquare(2,1,color) minisquare(2,2,color)];
            elseif (color==2)
                patch(:,:,color)=[minisquare(1,1,color) 255 minisquare(1,2,color);255 minisquare(2,1,color) minisquare(2,2,color)];
            end
        case {5}
            if (color==1||color==3)
                patch(:,:,color)=[minisquare(1,1,color) round(((minisquare(1,1,color)+minisquare(1,2,color))/2)) minisquare(1,2,color);minisquare(2,1,color) round(((minisquare(2,1,color)+minisquare(2,2,color))/2)) minisquare(2,2,color)];
            elseif (color==2)                
                patch(:,:,color)=[minisquare(1,1,color) 255 minisquare(1,2,color);minisquare(2,1,color) 255 minisquare(2,2,color)];
            end
        case {6}
            if (color==1||color==3)
                patch(:,:,color)=[minisquare(1,1,color) round(((minisquare(1,1,color)+minisquare(1,2,color))/2)) minisquare(1,2,color);minisquare(2,1,color) minisquare(2,2,color) round(((orgimage(p+1,q+2,color)+minisquare(2,2,color))/2))];
            elseif (color==2)                
                patch(:,:,color)=[minisquare(1,1,color) 255 minisquare(1,2,color);minisquare(2,1,color) minisquare(2,2,color) 255];
            end
        case {7}
            if (color==1||color==3)
                patch(:,:,color)=[minisquare(1,1,color) minisquare(1,2,color) round(((orgimage(p,q+2,color)+minisquare(1,2,color))/2));round(((orgimage(p+1,q-1,color)+minisquare(2,1,color))/2)) minisquare(2,1,color) minisquare(2,2,color)];
            elseif (color==2)                
                patch(:,:,color)=[minisquare(1,1,color) minisquare(1,2,color) 255;255 minisquare(2,1,color) minisquare(2,2,color)];
            end
        case {8}
            if (color==1||color==3)
                patch(:,:,color)=[minisquare(1,1,color) minisquare(1,2,color) round(((orgimage(p,q+2,color)+minisquare(1,2,color))/2));minisquare(2,1,color) round(((minisquare(2,1,color)+minisquare(2,2,color))/2)) minisquare(2,2,color)];
            elseif (color==2)                
                patch(:,:,color)=[minisquare(1,1,color) minisquare(1,2,color) 255;minisquare(2,1,color) 255 minisquare(2,2,color)];
            end
        case {9}
            if (color==1||color==3)
                patch(:,:,color)=[minisquare(1,1,color) minisquare(1,2,color) round(((orgimage(p,q+2,color)+minisquare(1,2,color))/2));minisquare(2,1,color) minisquare(2,2,color) round(((orgimage(p+1,q+2,color)+minisquare(2,2,color))/2))];
            elseif (color==2)                
                patch(:,:,color)=[minisquare(1,1,color) minisquare(1,2,color) 255;minisquare(2,1,color) minisquare(2,2,color) 255];
            end
        otherwise
            
% Color Image Patch
%         case {1}
%             patch(:,:,color)=[round(((orgimage(p,q-1,color)+minisquare(1,1,color))/2)) minisquare(1,1,color) minisquare(1,2,color);round(((orgimage(p+1,q-1,color)+minisquare(2,1,color))/2)) minisquare(2,1,color) minisquare(2,2,color)];
%         case {2}
%             patch(:,:,color)=[round(((orgimage(p,q-1,color)+minisquare(1,1,color))/2)) minisquare(1,1,color) minisquare(1,2,color);minisquare(2,1,color) round(((minisquare(2,1,color)+minisquare(2,2,color))/2)) minisquare(2,2,color)];      
%         case {3}
%             patch(:,:,color)=[round(((orgimage(p,q-1,color)+minisquare(1,1,color))/2)) minisquare(1,1,color) minisquare(1,2,color);minisquare(2,1,color) minisquare(2,2,color) round(((orgimage(p+1,q+2,color)+minisquare(2,2,color))/2))];
%         case {4}
%             patch(:,:,color)=[minisquare(1,1,color) round(((minisquare(1,1,color)+minisquare(1,2,color))/2)) minisquare(1,2,color);round(((orgimage(p+1,q-1,color)+minisquare(2,1,color))/2)) minisquare(2,1,color) minisquare(2,2,color)];
%         case {5}
%             patch(:,:,color)=[minisquare(1,1,color) round(((minisquare(1,1,color)+minisquare(1,2,color))/2)) minisquare(1,2,color);minisquare(2,1,color) round(((minisquare(2,1,color)+minisquare(2,2,color))/2)) minisquare(2,2,color)];
%         case {6}
%             patch(:,:,color)=[minisquare(1,1,color) round(((minisquare(1,1,color)+minisquare(1,2,color))/2)) minisquare(1,2,color);minisquare(2,1,color) minisquare(2,2,color) round(((orgimage(p+1,q+2,color)+minisquare(2,2,color))/2))];
%         case {7}
%             patch(:,:,color)=[minisquare(1,1,color) minisquare(1,2,color) round(((orgimage(p,q+2,color)+minisquare(1,2,color))/2));round(((orgimage(p+1,q-1,color)+minisquare(2,1,color))/2)) minisquare(2,1,color) minisquare(2,2,color)];
%         case {8}
%             patch(:,:,color)=[minisquare(1,1,color) minisquare(1,2,color) round(((orgimage(p,q+2,color)+minisquare(1,2,color))/2));minisquare(2,1,color) round(((minisquare(2,1,color)+minisquare(2,2,color))/2)) minisquare(2,2,color)];
%         case {9}
%             patch(:,:,color)=[minisquare(1,1,color) minisquare(1,2,color) round(((orgimage(p,q+2,color)+minisquare(1,2,color))/2));minisquare(2,1,color) minisquare(2,2,color) round(((orgimage(p+1,q+2,color)+minisquare(2,2,color))/2))];
%         otherwise
            
% Grayscale Image Patch with Lable
%         case {1}
%             patch=[0 minisquare(1,1) minisquare(1,2);0 minisquare(2,1) minisquare(2,2)];
%         case {2}
%             patch=[0 minisquare(1,1) minisquare(1,2);minisquare(2,1) 0 minisquare(2,2)];      
%         case {3}
%             patch=[0 minisquare(1,1) minisquare(1,2);minisquare(2,1) minisquare(2,2) 0];
%         case {4}
%             patch=[minisquare(1,1) 0 minisquare(1,2);0 minisquare(2,1) minisquare(2,2)];
%         case {5}
%             patch=[minisquare(1,1) 0 minisquare(1,2);minisquare(2,1) 0 minisquare(2,2)];
%         case {6}
%             patch=[minisquare(1,1) 0 minisquare(1,2);minisquare(2,1) minisquare(2,2) 0];
%         case {7}
%             patch=[minisquare(1,1) minisquare(1,2) 0;0 minisquare(2,1) minisquare(2,2)];
%         case {8}
%             patch=[minisquare(1,1) minisquare(1,2) 0;minisquare(2,1) 0 minisquare(2,2)];
%         case {9}
%             patch=[minisquare(1,1) minisquare(1,2) 0;minisquare(2,1) minisquare(2,2) 0];
%         otherwise

% Grayscale Image Patch 
%         case {1}
%             patch=[round(((orgimage(p,q-1)+minisquare(1,1))/2)) minisquare(1,1) minisquare(1,2);round(((orgimage(p+1,q-1)+minisquare(2,1))/2)) minisquare(2,1) minisquare(2,2)];
%         case {2}
%             patch=[round(((orgimage(p,q-1)+minisquare(1,1))/2)) minisquare(1,1) minisquare(1,2);minisquare(2,1) round(((minisquare(2,1)+minisquare(2,2))/2)) minisquare(2,2)];      
%         case {3}
%             patch=[round(((orgimage(p,q-1)+minisquare(1,1))/2)) minisquare(1,1) minisquare(1,2);minisquare(2,1) minisquare(2,2) round(((orgimage(p+1,q+2)+minisquare(2,2))/2))];
%         case {4}
%             patch=[minisquare(1,1) round(((minisquare(1,1)+minisquare(1,2))/2)) minisquare(1,2);round(((orgimage(p+1,q-1)+minisquare(2,1))/2)) minisquare(2,1) minisquare(2,2)];
%         case {5}
%             patch=[minisquare(1,1) round(((minisquare(1,1)+minisquare(1,2))/2)) minisquare(1,2);minisquare(2,1) round(((minisquare(2,1)+minisquare(2,2))/2)) minisquare(2,2)];
%         case {6}
%             patch=[minisquare(1,1) round(((minisquare(1,1)+minisquare(1,2))/2)) minisquare(1,2);minisquare(2,1) minisquare(2,2) round(((orgimage(p+1,q+2)+minisquare(2,2))/2))];
%         case {7}
%             patch=[minisquare(1,1) minisquare(1,2) round(((orgimage(p,q+2)+minisquare(1,2))/2));round(((orgimage(p+1,q-1)+minisquare(2,1))/2)) minisquare(2,1) minisquare(2,2)];
%         case {8}
%             patch=[minisquare(1,1) minisquare(1,2) round(((orgimage(p,q+2)+minisquare(1,2))/2));minisquare(2,1) round(((minisquare(2,1)+minisquare(2,2))/2)) minisquare(2,2)];
%         case {9}
%             patch=[minisquare(1,1) minisquare(1,2) round(((orgimage(p,q+2)+minisquare(1,2))/2));minisquare(2,1) minisquare(2,2) round(((orgimage(p+1,q+2)+minisquare(2,2))/2))];
%         otherwise

    end
end

