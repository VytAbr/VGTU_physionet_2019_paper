function model = load_sepsis_model()

model_short = 'model_s';
model_medium = 'model_m';
model_long = 'model_l';
model_standartize = 'standartize_values_ab';

model{1,1} = load(model_short);
model{1,2} = load(model_medium);
model{1,3} = load(model_long);
model{1,4} = load(model_standartize);

end
