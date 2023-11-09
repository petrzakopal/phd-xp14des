function [importFile] = initializeInputSettings(importFile,matFileName)
%INITIALIZEINPUTSETTINGS Initialize input settings for simulated simulink
%objects


% Create data for input mat file

% Check the import file for options - string headers
opts = detectImportOptions(importFile);

% Get the variable names - headers of CSV file
headers = opts.VariableNames;

% Read numerical data from CSV file
data = readmatrix(importFile);

% Initialize Simulink model and postprocess parameters
% this is the way how to hard code it
% in the recent version the parameters are set in the importFile
% V_DC = sqrt(2) * 400;
% R = 10;
% L = 85e-3;
% fpwm = 10e3;
% T_PWM = 1 / fpwm;
% sampleTime = 5e-7;
% modelParametersHeaders = ["V_DC", "R", "L", "fpwm", "T_PWM", "sampleTime"];
% modelParametersValues = [V_DC, R, L, fpwm, T_PWM, sampleTime];

[dataRows, dataColumns] = size(data);

for i = 1:dataRows
    data(i,6) = data(i,3)+data(i,5); % L1
    data(i,7) = data(i,4)+data(i,5); % L2
    data(i,8) = 1-data(i,5)^(2)/(data(i,6)*data(i,7)); % sigma
end

% Save the mat file
% to be later retrieved in main function
% save matFileName 'data headers';
 save(matFileName,"data","headers");
end