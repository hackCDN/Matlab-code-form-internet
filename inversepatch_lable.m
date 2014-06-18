function [ patch,minisquare] = inversepatch_lable( patch_nub,orgimage_x,orgimage_y,color_orgimage)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

orgimage = double(color_orgimage);

for color=1:3;
p=orgimage_x;
q=orgimage_y;
minisquare(1,1,color) = orgimage(p,q,color);
minisquare(1,2,color) = orgimage(p,q+1,color);
minisquare(2,1,color) = orgimage(p+1,q,color);
minisquare(2,2,color) = orgimage(p+1,q+1,color);

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

    switch patch_nub
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
    end
end

