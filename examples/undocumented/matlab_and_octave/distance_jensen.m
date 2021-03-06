addpath('tools');
fm_train_real=load_matrix('../data/fm_train_real.dat');
fm_test_real=load_matrix('../data/fm_test_real.dat');

% Jensen Metric
disp('JensenMetric');
sg('set_distance', 'JENSEN', 'REAL');

sg('set_features', 'TRAIN', fm_train_real);
dm=sg('get_distance_matrix', 'TRAIN');

sg('set_features', 'TEST', fm_test_real);;
dm=sg('get_distance_matrix', 'TEST');
