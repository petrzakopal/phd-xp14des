clear all;

% poolOfWorkers = parpool();

% Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define Simulink model to load
modelName='model_vec';

% Define file with variables (settings) to load
% In this mat faile the settingsData is saved and then loaded
matFileName='inputSettings.mat';

% Initialize MAT file from the CSV file which is loaded
% Initializes model parameters as well
initializeInputSettings('settingsData.csv',matFileName);

% Load the MATfile to variables
matFile = matfile(matFileName,'Writable',true);

% Create data Array based on a MAT file which is based on a configuration
% CSV
dataArray = matFile.data;

% Get headers (name of the variables) from the MATfile, respectively CSV
headers = matFile.headers;

% Get rows and cols of data to be then passed to a Simulink model
[dataRows, dataColumns] = size(matFile.data);

% Number of simulations is based on a rows of unique data from CSV file
numberOfSimulations = dataRows;
numberOfParameters = dataColumns;


% Main simulation section
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Build the accelerator - only when input variables are present in the workspace
% otherwise the repid accelerator cannot work
% Simulink.BlockDiagram.buildRapidAcceleratorTarget(modelName);

% Preallocating for the speeeed!
simPrepObj(1:numberOfSimulations) = Simulink.SimulationInput;

% Load model to object for the number of simulations
for i = 1:numberOfSimulations
    simPrepObj(i) = Simulink.SimulationInput(modelName);
end

% Only when using rapid accelerator which has been build
% used to speed up the simulation
% simPrepObj.setModelParameter('SimulationMode', 'rapid-accelerator');
% simPrepObj.setModelParameter('RapidAcceleratorUpToDateCheck', 'off');

% Loading variables loop
for i = 1:numberOfSimulations

    % Load variables from mat file
    % Would be used if the data could be formated for that to be able to import
    % the data
    % simPrepObj(i) = loadVariablesFromMATFile(simPrepObj(i),matFileName);

    for i2=1:numberOfParameters
        % Defining parameters in one run of a simulation
        % Basically looping through columns in one row from MAT file which imported
        % data from CSV file
        simPrepObj(i) = simPrepObj(i).setVariable(string(headers(i2)),dataArray(i,i2));

    end

end

% Simulate sequentially - we want the SPEEED! so the parallel computation
% is used
% modelObj = sim(simPrepObj);


% Note that the extension Parallel Computing Toolbox is needed
modelObj=parsim(simPrepObj, 'ShowSimulationManager', 'on');

for i = 1:numberOfSimulations
    plotGraph(modelObj(i),simPrepObj(i),i)
end

% Plot torque characteristics
% With comparation of different runs
plotTorque(modelObj,simPrepObj)