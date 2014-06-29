%  ref example
PathName='C:\Users\Water\Desktop\MATLAB\ucid';
dir=dir(PathName);

for i=3:size(dir,1)
    FileName=dir(i).name;
    FullPathName = [PathName,'\',FileName];
%     FullPathName = [PathName,FileName];
     
    I=imread(FullPathName);
    imshow(I);
end

% My Example
OpenPathName='C:\Users\Water\Desktop\MATLAB\ucid';
dir_source=dir(OpenPathName);
SavePathName='C:\Users\Water\Desktop\MATLAB\ucid\SC';
dir_target=dir(SavePathName);

seamsize='SC10';

for item=3:size(dir_source,1)
    FileName_s=dir_source(item).name;
    FullPathName_s = [OpenPathName,'\',FileName_s];
    X=imread(FullPathName_s);
    Z=imread(FullPathName_s);
    
    FileName_t=dir_target(item).name;
    FullPathName_t1 = [SavePathName,'\',seamsize,FileName_t]; 
    FullPathName_t2 = [SavePathName,'\','SIMG',seamsize,FileName_t];
    imwrite(MSeamedImg,FullPathName_t1);
    imwrite(X,FullPathName_t2);
end