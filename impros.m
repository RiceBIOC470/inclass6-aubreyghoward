function [metadata] = impros (filename)
%will return some basic meta data about a given file name
    wholeinfo = imfinfo(filename);
    metadata.filename = wholeinfo.Filename;
    metadata.filedate = wholeinfo.FileModDate;
    metadata.filesize = wholeinfo.FileSize;
    metadata.format = wholeinfo.Format;
    metadata.bitdepth = wholeinfo.BitDepth;
    x = [strfind(wholeinfo.ImageDescription,"Actual Temperature=")];
    y = [strfind(wholeinfo.ImageDescription,"Cooling=")];
    z = str2num(wholeinfo.ImageDescription((x+19):(y-3)));
    metadata.temp = z
   
 end