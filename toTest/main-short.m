% Made by V.A. 2019
% LOCAL SETUP TO RUN DRIVER
% Main file:get_sepsis_score
% Runs driver, then runs get_sepsis_score
% Input PSV file
% Output text file with label and probablity

close all;
clearvars;
commandwindow;
% clc

p.WorkFolder = 'C:\Users\ELF-ER-1 425-Aud\OneDrive - Vilniaus Gedimino technikos universitetas\Datasets\physionet\2019\';
% p.WorkFolder = 'D:\Datasets\physionet\2019\';

p.DataFolder = [p.WorkFolder 'training_setA'];
p.PredictionFolder = [p.WorkFolder 'predictionA'];

p.GetScore = 1;
p.computeScore = 1;
p.OutPut = 'out_1.txt';

%% get scores for hidden data
% dependencies:
% load_sepsis_model - load once
% get_sepsis_score - runs for each time sample, uses model
if p.GetScore
    driver(p.DataFolder, p.PredictionFolder)
end

% get score
% takes a while
if p.computeScore
    output_file = fullfile(p.PredictionFolder, p.OutPut);
    compute_scores_2019(p.DataFolder, p.PredictionFolder, output_file);
    
    %     print to window version
    %     compute_scores_2019(p.DataFolder, p.PredictionFolder);
end

disp('Finished')