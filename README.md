# Plant-Classification-With-Matlab

### About Project
The goal of this project is identify and classification of flower types.Image of flower chosen and upload from computer to app. Later then the image is passed through the model and the class is found.This project made with Matlab Deep Learning Toolbox. If you dont have it you can download and get more information form [this link](https://www.mathworks.com/products/deep-learning.html). To download pre-trained model [click this link](https://github.com/helinozgur/Plant-Identification-With-Matlab/releases/tag/%23model).
##### Dataset
The pictures are divided into five classes: daisy, tulip, rose, sunflower, dandelion. For each class there are about 800 photos.To download and get more information about  dataset [click this link](https://www.kaggle.com/alxmamaev/flowers-recognition)
#### About Model
GoogLeNet is a type of convolutional neural network based on the Inception architecture. It utilises Inception modules, which allow the network to choose between multiple convolutional filter sizes in each block. An Inception network stacks these modules on top of each other, with occasional max-pooling layers with stride 2 to halve the resolution of the grid. To get more information about the GoogLeNet model [click this link](https://www.geeksforgeeks.org/understanding-googlenet-model-cnn-architecture/).

<img width="352" alt="resim" src="https://user-images.githubusercontent.com/52162324/103408711-b632bc80-4b74-11eb-99b5-b80486dca661.png">

#### Model Results

![train2](https://user-images.githubusercontent.com/52162324/103408757-f6923a80-4b74-11eb-86a0-1b9d577864b9.PNG)

![train1](https://user-images.githubusercontent.com/52162324/103408775-0578ed00-4b75-11eb-9938-0cbde44b945a.PNG)

#### Training Images Scores
![table of scores](https://user-images.githubusercontent.com/52162324/103408861-525cc380-4b75-11eb-8066-bc33cd6a05c0.PNG)

#### Creating The App
After the model is trained and tested I created an app to be more practical. For creating app I used Matlab's App Designer enviroment.
#### Running The App
Step1:

![image1](https://user-images.githubusercontent.com/52162324/103410148-280e0480-4b7b-11eb-9ece-f4b86c0010ed.PNG)

Step2:

![image2](https://user-images.githubusercontent.com/52162324/103409349-715c5500-4b77-11eb-8616-ac689878bf58.PNG)

Result:

![image3](https://user-images.githubusercontent.com/52162324/103410205-5ee41a80-4b7b-11eb-84d0-7f770c61cecc.PNG)


#### References

https://www.math.usm.edu/lambers/mat419/lecture10.pdf

https://www.mathworks.com/videos/deep-learning-in-agriculture-matlab-for-plant-classification-1583158370815.html

https://medium.com/coinmonks/paper-review-of-googlenet-inception-v1-winner-of-ilsvlc-2014-image-classification-c2b3565a64e7

https://paperswithcode.com/method/googlenet

https://www.geeksforgeeks.org/understanding-googlenet-model-cnn-architecture/

https://www.kaggle.com/alxmamaev/flowers-recognition
