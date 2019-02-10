close all;
clear all;
clc
% --------------------------------------------------------------------
%                                                    Create image pair
% --------------------------------------------------------------------
grondtruth_folder='/target';
generated_folder='/output';

grondtruth_jpg =  dir( grondtruth_folder );  
generated_jpg  =  dir( generated_folder );
fianlscore_da_db =[];

for i = 3 : length( grondtruth_jpg )
    grondtruth_file = fullfile( grondtruth_folder, grondtruth_jpg( i ).name);  
    generated_file = fullfile( generated_folder, generated_jpg( i ).name);  
    
    % read image
    I_grondtruth = imread(grondtruth_file);
    I_generated  = imread(generated_file);  

% --------------------------------------------------------------------
%                                           Extract features and match
% --------------------------------------------------------------------

    [fa,da] = vl_sift(im2single(rgb2gray(I_grondtruth))) ;
    [fb,db] = vl_sift(im2single(rgb2gray(I_generated))) ;

    [matches, scores] = vl_ubcmatch(da,db) ;

    num_da = size(da,2);
    num_db = size(db,2);
    min_da_db = min(num_da,num_db);
    score_da_db(i-2) = size(matches,2)/min_da_db;

    da=[];
    db=[];
    matches=[];
end

FLSS_Score = sum(score_da_db)/(length( grondtruth_jpg )-2)






