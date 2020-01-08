# Example prediction code for MATLAB for the PhysioNet/CinC Challenge 2019

## Contents

This prediction code uses three scripts:

* `get_sepsis_score.m` makes predictions on clinical time-series data.  Add your prediction code to the `get_sepsis_score` function.
* `load_sepsis_model.m` loads model weights, etc. for making predictions.  To reduce your code's run time, add any code to the `load_sepsis_model` function that you only need to run once, such as loading weights for your model.
* `driver.m` calls `load_sepsis_model` once and `get_sepsis_score` many times. It also performs all file input and output.  **Do not** edit this script -- or we will be unable to evaluate your submission.

Check the code in these files for the input and output formats for the `load_sepsis_model` and `get_sepsis_score` functions.

VGTU team:
* `load_sepsis_model` function load 4 files into struct 'model_s' 'model_m', 'model_l' and 'standartize_values_ab'.
* `get_sepsis_score.m` function runs 'getFeatures' to calculate our features. Then normalizes using 'standartize_values_ab' model. And switches to duration for LSTM classier. 
* Must files additionally included to example code are 'model_s' 'model_m','model_l', 'standartize_values_ab', 'getFeatures'.

## Running

You can run this prediction code by starting MATLAB and running

    driver(input_directory, output_directory)

where `input_directory` is a directory for input data files and `output_directory` is a directory for output prediction files.  The PhysioNet/CinC 2019 webpage provides a training database with data files and a description of the contents and structure of these files.

To run prediction and compute scores:
In folder 'toTest' there are 2 files. Place them in same folder with driver, then run main-short.m

## Details

See the PhysioNet webpage for more details, including instructions for the other files in this repository.
