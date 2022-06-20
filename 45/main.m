% image=rgb2gray(imread('C:\Users\Marjan\Documents\MATLAB\34\39\Marjan.jpg'));
clc; clear all; close all;
testimage=imread('C:\Users\Marjan\Documents\MATLAB\41\Adaptive-Median-Filter-master\Adaptive-Median-Filter-master\adpmedfilter.tif');                                       %Test Image
W=input('Enter the size of the window: ');   %Size of the window 
adapmedfilter(testimage,W);  %Function Call