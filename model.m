%Plant Classification With Matlab
%For more information https://github.com/helinozgur/Plant-Classification-With-Matlab

%% First we importing our dataset and splitting it to train and test set
Flowerds=imageDatastore("C:\Users\helin\Desktop\plant_identification\flowers","IncludeSubFolders",true,"LabelSource","foldernames");
[imtrain,imval]=splitEachLabel(Flowerds,0.75);

auds= augmentedImageDatastore([224,224],imtrain,'DataAugmentation',...
    imageDataAugmenter("RandRotation",[-180,180],"RandXReflection",true));

[num,~,ic]= unique(imtrain.Labels);
a_table= table(num,accumarray(ic,1));
disp=(['Minimum number of training images in a label:' num2str(min(a_table.Var2))]);

valset=[readall(augmentedImageDatastore([224,224],imval))
    readall(augmentedImageDatastore([224,224],imval,'DataAugmentation',...
    imageDataAugmenter("RandRotation",[-180,180])))];

%% We used SDGM(Steepest Gradient Descent Method)for optimization 
miniBatchSize=100;
options=trainingOptions('sgdm',...
    'MiniBatchSize',miniBatchSize,...
    'MaxEpochs',10,...
    'InitialLearnRate',3e-4,...
    'Shuffle','every-epoch',...
    "ValidationFrequency",50,...
    'ValidationData', valset,...
    'Verbose',true,...
    'Plots','training-progress');
%% Training and saving model
%Flowernet= trainNetwork(auds,lgraph_1,options);
%save Flowernet

%% To see our models training results
load Flowernet
%[predicted,scores]=classify(Flowernet,valset);
%tableofscores=[table(predicted) array2table(scores,"VariableNames",categories(valset.response))];
%% Checking some of layers
%First Convolutional Layer
% layer=2;
% name= Flowernet.Layers(layer).Name;
% ind= find(valset.response=="rose");
% N=ind(6);
% imshow(valset.input{N});
% acs1= activations(Flowernet,valset(N,:),'conv1-7x7_s2');
% size(acs1)
% imshow(imresize(imtile(rescale(acs1)),[1000,1000]))

%Second Convolutional Layer
% layer=6;
% name2= Flowernet.Layers(layer).Name;
% ind= find(valset.response=="rose");
% N=ind(6);
% imshow(valset.input{N});
% acs1= activations(Flowernet,valset(N,:),'conv2-3x3_reduce');
% size(acs1)
% imshow(imresize(imtile(rescale(acs1)),[1000,1000]))




