function [score, label] = get_sepsis_score(data, model)
% send only last value

Xd1= size(data,1);
score = 0;
label = 0;
data_f = getFeatures(data);

data_norm = (data_f - model{1,4}.standartize_values.mean) ./ model{1,4}.standartize_values.std;

if Xd1<10
    try
        score = predict(model{1,1}.net, data_norm');
    catch
        disp('error 1')
        disp(Xd1)
        score = 0;
    end    
    % %%% ---------------------------------------------------------------------
elseif Xd1<61
    % for moderate ICU time
    try
        score = predict(model{1,2}.net, data_norm');
    catch
        disp('error 2')
        disp(Xd1)
        score = 0;
    end    
    % %%% ---------------------------------------------------------------------
else
    %      for long ICU time
    try
        score = predict(model{1,2}.net, data_norm');
    catch
        disp('error 3')
        disp(Xd1)
        score = 0;
    end    
end

% some models might have different prediction bound on new data
if score<0
    score = 0;
elseif score>1
    score = 1;    
end

label = round(score);
