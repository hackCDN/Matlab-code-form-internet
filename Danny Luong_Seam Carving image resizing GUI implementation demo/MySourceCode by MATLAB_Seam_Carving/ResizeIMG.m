% Script file for experimenting with various seam functions
%
% Author: Danny Luong, 12/5/07

close all
clear all
% X=imread('ucid00038.tif');
% Z=imread('ucid00038.tif');
OpenPathName='D:\ucid.v2';
dir_source=dir(OpenPathName);
SavePathName='D:\ucid.v2\SC10';
% dir_target=dir(SavePathName);
dir_target=dir_source;

seamsize='SC10';
resize_P=0.9;

for item=4:size(dir_source,1)
    FileName_s=dir_source(item).name;
    FullPathName_s = [OpenPathName,'\',FileName_s];
    X=imread(FullPathName_s);
    Z=imread(FullPathName_s);

    X=double(X)/255;
    [rows cols dim]=size(X);
    
    seams=cols-(cols*resize_P);
    
    %get hsv image
    % Y=rgb2hsv(X);

    %     figure(1)
    %     imagesc(X)
    %     axis equal
    figure(1)
    imagesc(Z)

    %find gradient image of luminance channel
    E1=findEnergy(X);

        figure(2)
        imshow(E1)

    %     
    % E1=zeros(300,500);
    % E1(120,:)=1;

    %finds seam calculation image
    S1=findSeamImg(E1);

        figure(3)
        imshow(S1,[min(S1(:)) max(S1(:))])

    % Finds seam    
    SeamVector=findSeam(S1);

    % %plot image with superimposed seam
    % SeamedImg=SeamPlot(E1,SeamVector);
    %     figure(4)
    %     imshow(SeamedImg,[min(SeamedImg(:)) max(SeamedImg(:))]) 

    % %remove seam
    % SeamCutImg=SeamCut(X,SeamVector);
    % 
    %     figure(5)
    %     imshow(SeamCutImg)

    %find and remove N seams
    M=removalMap(X,seams);
    MSeamedImg=SeamCut(X,M);
    figure(6)
    imshow(MSeamedImg)

    % My Ground Truth
    for i=1:seams
        SeamVectorRtl=M;    
        SeamedImg=SeamPlot(X,SeamVectorRtl(:,i));
        figure(4)
        imshow(SeamedImg,[min(SeamedImg(:)) max(SeamedImg(:))]) 
        imwrite(SeamedImg,'SIMGSC.tif');
        X=imread('SIMGSC.tif');
    end
    
    FileName_t=dir_target(item).name;
    FullPathName_t1 = [SavePathName,'\',seamsize,FileName_t]; 
    FullPathName_t2 = [SavePathName,'\','GroundTruth',seamsize,FileName_t];
    imwrite(MSeamedImg,FullPathName_t1);
    imwrite(X,FullPathName_t2);
    
showitem=FileName_t
end