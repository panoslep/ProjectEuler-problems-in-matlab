 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Loops through a folder with analysis and result files
% and collectes data for CTF, LO, LU, SNR, SNR unif and dates
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



files = dir;
directoryNames = {files([files.isdir]).name};
directoryNames = directoryNames(~ismember(directoryNames,{'.','..'}));


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Add option to ommit existing files.
% This should help for automatic monitoring
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




% Loop through file names and save in list of Result files and Analysis
% files
resultFileNames = "";
analysisFileNames = "";
for i=1:length(files)
    st = files(i).name;
    if (contains(st, "Result"))
        resultFileNames = [resultFileNames; files(i).name];
    end
    if (contains(st, "V11"))
        analysisFileNames = [analysisFileNames; files(i).name];
    end
end

% Delete the first empty lines
resultFileNames(1) = [];
analysisFileNames(1) = [];

% upload Result sheet
for i = 1 : length(resultFileNames)
    tempSheet = readtable(resultFileNames(i), "Sheet", "Result");
end




