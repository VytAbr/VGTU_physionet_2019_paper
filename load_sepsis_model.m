function model = load_sepsis_model()


model_directory = 'models';

% model_short = 'model_sa_28-Nov-2019_0.0497';
model_short = 'LSTM_sh_b';
model_medium = 'LSTM_med_b';
model_long = 'LSTM_long_b';
model_standartize = 'standartize_values_ab';

model{1,1} = load(fullfile(model_directory, model_short));
model{1,2} = load(fullfile(model_directory, model_medium));
model{1,3} = load(fullfile(model_directory, model_long));
model{1,4} = load(fullfile(model_directory, model_standartize));

% model{2,1} = load(fullfile(model_directory, 'norm_s'));
% model{2,2} = load(fullfile(model_directory, 'norm_m'));
% model{2,3} = load(fullfile(model_directory, 'norm_l'));
%     model = [];


% load xgboost library
% try
%     unloadlibrary('xgboost')
% end
% loadlibrary('xgboost')
% [~,~,mytest] = calllib('xgboost','XGDMatrixCreateFromMat',randi(5,1,1),1,1, 0, []);
% [~, ~, myb] = calllib('xgboost','XGBoosterCreate',mytest, 1, []);
% [~, loadedBooster] = calllib('xgboost','XGBoosterLoadModel', myb,...
%     fullfile(model_directory, model_short));
% clear mytest myb
% model{1,1} = loadedBooster;

end
