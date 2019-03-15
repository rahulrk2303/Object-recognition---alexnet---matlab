clear                                               
camera = webcam
nnet = alexnet
while true
    picture = camera.snapshot;
    picture = imresize(picture,[227,227]);
    label = classify(nnet, picture); 
    image(picture);     % Show the picture
    title(char(label)); % Show the label
    drawnow; 
end