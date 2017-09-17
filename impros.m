function [metadata] = impros (filename)
%will return some basic meta data about a given file name
    wholeinfo = imfinfo(filename);
    metadata.filename = wholeinfo.Filename;
    metadata.filedate = wholeinfo.FileModDate;
    metadata.filesize = wholeinfo.FileSize;
    metadata.format = wholeinfo.Format;
    metadata.bitdepth = wholeinfo.BitDepth;
    
end