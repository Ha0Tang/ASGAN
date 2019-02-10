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

% --------------------------------------------------------------------
%                                           Find the most similar pair
% --------------------------------------------------------------------
    [max_finalscore,index]=max(score_da_db);
    index=index+2;
    display(grondtruth_jpg( index ).name)
    grondtruth_file = fullfile( grondtruth_folder, grondtruth_jpg( index ).name);  
    generated_file = fullfile( generated_folder, generated_jpg( index ).name);  
    
    I_grondtruth = imread(grondtruth_file);
    I_generated  = imread(generated_file);  
    imshow(I_grondtruth)
    imshow(I_generated)
    [fa,da] = vl_sift(im2single(rgb2gray(I_grondtruth))) ;
    [fb,db] = vl_sift(im2single(rgb2gray(I_generated))) ;

    [matches, scores] = vl_ubcmatch(da,db) ;
    
    [drop, perm] = sort(scores, 'descend') ;
    matches = matches(:, perm) ;
    scores  = scores(perm) ;

    figure(1) ; clf ;
    imagesc(cat(2, I_grondtruth, I_generated)) ;
    axis image off ;
    vl_demo_print('sift_match_1', 1) ;

    figure(2) ; clf ;
    imagesc(cat(2, I_grondtruth, I_generated)) ;

    xa = fa(1,matches(1,:)) ;
    xb = fb(1,matches(2,:)) + size(I_grondtruth,2) ;
    ya = fa(2,matches(1,:)) ;
    yb = fb(2,matches(2,:)) ;

    hold on ;
    h = line([xa ; xb], [ya ; yb]) ;
    set(h,'linewidth', 1, 'color', 'b') ;

    vl_plotframe(fa(:,matches(1,:))) ;
    fb(1,:) = fb(1,:) + size(I_grondtruth,2) ;
    vl_plotframe(fb(:,matches(2,:))) ;
    axis image off ;

    vl_demo_print('sift_match_2', 1) ;
% --------------------------------------------------------------------





