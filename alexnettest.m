clear                              %Clear
net = alexnet;                     %Load the convolutional Neural Network (CNN)
%net.Layers                          
[file,path]=uigetfile({'*.jpg;*.bmp;*.png;*.tif'},'Choose an image');
s=[path,file];
I=imread(s);                       %Input Image      
I = imresize(I,[227,227]);         %Resize the picture to 277x277
label = classify(net, I)           %Classify the picture                             
imshow(I);                         %Output Image
text = char(label);
title(text)                        %Show the label
tts (text);