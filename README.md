# Machine Learning
For this assignment, students were to teach a computer to recognize handwritten numbers.

More specifically, we were to implement linear classification, K Nearest Neighbour, and Neural Network Machine learning algorithms in two and multiclass settings using the [MNIST dataset](http://yann.lecun.com/exdb/mnist/) in Matlab.

In this example, our samples were images of handwritten numbers 0 through 9 provided by MNIST. The samples features were their pixel by pixel color intensities, ranging from black to white, and their classes were the digits 0 through 9.



# Basic Premise
## Linear Classification
![](https://github.com/JoeGaebel/MachineLearning/blob/master/linear.png?raw=true)<br>
involves taking samples, determining features, and basically generating an equation of a line.
This equation of a line, also known as a hyperplane, divides the classes of the samples so that new samples can be compared and classified. In order to generate an accurate hyperplane,
a high number of training samples must be used. 

## K Nearest Neighbours
![](https://github.com/JoeGaebel/MachineLearning/blob/master/KNN.jpeg?raw=true)<br>
involves taking samples, determining features, and comparing new samples to their closest similarity to the training samples.

## Neural Networks
![](https://github.com/JoeGaebel/MachineLearning/blob/master/neural.jpeg?raw=true)<br>
Modelled after neuron structures in the human brain, machine learning with neural networks involves creating layers of neural units which have their own weights and interpret inputs.

# Algorithms Explored

## Linear Classification
The hyperplane is defined by a vector of weights, which are produced by various algorithms available within the field of machine learning.
The equations for generating these weights which are explored in this repo are as follows:

1. Randomly Generated - `randomizedWeightTrain.m`
  - This algorithm iteratively creates a weight vector at random, computes it's error, and stores the best scoring weight.
  - Given our test set with two classes and 100, 1000, 10000 iterations, this algorithm had a best error rate at: `20.19%`
  
2. Logistic Regression - `logisticRegressionWeightTrain.m`
  - This algorithm calculates loss of the classification by utilizing the sigmoid function, and does not penalize
  a sample for being a far distance from it's decision boundary when it is correctly classified.
  - Given our test set with two classes with 30 iterations, this algorithm had an error rate of: `4.87%`
  
3. Perceptron - `perceptronWeightTrain.m`
  - This algorithm uses calculates loss as proportional to distance of misclassified example to hyperplane and uses gradient
  descent to tune the weights in the direction of least error.
  - Incorporates a learning rate
  - Given our test set with all classes, 100 iterations and a learning rate of 0.1, the error rate was: `16.45%`
  
4. Softmax - `softmaxWeightTrain.m`
  - This algorithm normalizes the loss of the weight vector, and incorporates a learning rate
  - Given our test set with all classes, 100 iterations and a learning rate of 0.1, the error rate was `12.50%`
  
## K Nearest Neighbour - `KNNClassifier.m`
  - This algorithm instead of training a weight vector, compares the sample against the neighbours of the training samples.
  - In this way, the highest number of neighbours of a particular class indicate that the sample is probably that class.
  - The K value is the number of neighbours to consider.
  - Given our test set with all classes, with K values of [1, 3, 5, 7], the best error rate was `7.90%`
  
  
## Neural Networks - `neuralNetClassify.m`
  - Algorithm takes in how many hidden layers of neurons to train, as well as how many nodes within each layer
  - Additionally takes a regularizer weight
  - Uses Matlab's built in training and classification
  - Given our test set with all classes, H of [100, 100] and a regularizer weight of 0,1, error rate was `3.50%`
  
# Files
- `pN_sample.m` files were used to help with the testing of the implementation of the algorithms
- `*WeightTrain.m` files are used to produce weight vectors
- `trainAndTest*.m` files are used to test those weight vectors against the dataset
- `benchmarkClassification.m` is used to return an error rate and confusion matrix
- `extract2ClassData.m` is used to extract classes with the specified labels
- `multiClassClassifier.m` takes a weight vector and performs multiclass classification
- `twoClassLinearClassification.m` takes a weight vector and performs 2 class classification
- `sigmoid.m` calculates the sigmoid function for a matrix
- `showImage.m` takes an example and displays it to the user
- `findErrorsForK.m` runs KNN for a list of K's and test data
  
# Setup
1. get Matlab
2. load `A1.mat`, which contains X_train, Y_train, X_test, Y_test
3. `trainAndTest*.m`s are fun to play with


# Спасибо
Thanks to Olga Veksler, for wonderfully teaching a great course and for creating the `.mat` files to train and test with.
