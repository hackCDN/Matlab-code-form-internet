function [ patch,minisquare ] = inversepatch_nonlable( patch_nub,orgimage_x,orgimage_y,color_orgimage )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

orgimage = double(color_orgimage);

for color=1:3;
p=orgimage_x;
q=orgimage_y;
minisquare(1,1,color) = orgimage(p,q,color);
minisquare(1,2,color) = orgimage(p,q+1,color);
minisquare(2,1,color) = orgimage(p+1,q,color);
minisquare(2,2,color) = orgimage(p+1,q+1,color);

% Color Image Patch
    switch patch_nub
        case {1}
            patch(:,:,color)=[round(((orgimage(p,q-1,color)+minisquare(1,1,color))/2)) minisquare(1,1,color) minisquare(1,2,color);round(((orgimage(p+1,q-1,color)+minisquare(2,1,color))/2)) minisquare(2,1,color) minisquare(2,2,color)];
        case {2}
            patch(:,:,color)=[round(((orgimage(p,q-1,color)+minisquare(1,1,color))/2)) minisquare(1,1,color) minisquare(1,2,color);minisquare(2,1,color) round(((minisquare(2,1,color)+minisquare(2,2,color))/2)) minisquare(2,2,color)];      
        case {3}
            patch(:,:,color)=[round(((orgimage(p,q-1,color)+minisquare(1,1,color))/2)) minisquare(1,1,color) minisquare(1,2,color);minisquare(2,1,color) minisquare(2,2,color) round(((orgimage(p+1,q+2,color)+minisquare(2,2,color))/2))];
        case {4}
            patch(:,:,color)=[minisquare(1,1,color) round(((minisquare(1,1,color)+minisquare(1,2,color))/2)) minisquare(1,2,color);round(((orgimage(p+1,q-1,color)+minisquare(2,1,color))/2)) minisquare(2,1,color) minisquare(2,2,color)];
        case {5}
            patch(:,:,color)=[minisquare(1,1,color) round(((minisquare(1,1,color)+minisquare(1,2,color))/2)) minisquare(1,2,color);minisquare(2,1,color) round(((minisquare(2,1,color)+minisquare(2,2,color))/2)) minisquare(2,2,color)];
        case {6}
            patch(:,:,color)=[minisquare(1,1,color) round(((minisquare(1,1,color)+minisquare(1,2,color))/2)) minisquare(1,2,color);minisquare(2,1,color) minisquare(2,2,color) round(((orgimage(p+1,q+2,color)+minisquare(2,2,color))/2))];
        case {7}
            patch(:,:,color)=[minisquare(1,1,color) minisquare(1,2,color) round(((orgimage(p,q+2,color)+minisquare(1,2,color))/2));round(((orgimage(p+1,q-1,color)+minisquare(2,1,color))/2)) minisquare(2,1,color) minisquare(2,2,color)];
        case {8}
            patch(:,:,color)=[minisquare(1,1,color) minisquare(1,2,color) round(((orgimage(p,q+2,color)+minisquare(1,2,color))/2));minisquare(2,1,color) round(((minisquare(2,1,color)+minisquare(2,2,color))/2)) minisquare(2,2,color)];
        case {9}
            patch(:,:,color)=[minisquare(1,1,color) minisquare(1,2,color) round(((orgimage(p,q+2,color)+minisquare(1,2,color))/2));minisquare(2,1,color) minisquare(2,2,color) round(((orgimage(p+1,q+2,color)+minisquare(2,2,color))/2))];
        otherwise
    end
end

