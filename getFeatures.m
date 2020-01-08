function data_s = getFeatures(data)

current_data = data;
data_s = [];
%     if ~exist('data_v')
%         data_v = [];
%     end
% if (t == num_rows) && num_rows<10
%     from here use only vitals
working_data = current_data(:,1:7);
f_mean = mean(working_data,1,'omitnan');
data_s = [data_s f_mean];

if size(data,1)~=1
    f_std = std(working_data,1,'omitnan');
else
    f_std = nan(1,7);
end
data_s = [data_s f_std];

if size(data,1)~=1
f_maxmin = max(working_data) - min(working_data);    
else
    f_maxmin = nan(1,7);
end
data_s = [data_s f_maxmin];

f_age = current_data(end,35); %age
data_s = [data_s f_age];
f_hosp = current_data(end,39); %hosp time
data_s = [data_s f_hosp];
f_ICU = current_data(end,40); %ICU time
data_s = [data_s f_ICU];

% remove nans
nanHandle = -1;
data_s(isnan(data_s)) = nanHandle; % Nan to '-1'
