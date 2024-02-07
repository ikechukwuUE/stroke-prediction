# Stroke Prediction Model

## Project Overview

This project aims to develop a predictive model to determine the likelihood of a patient getting a stroke based on various health factors. The model utilizes data from patient records, including medical history and demographic information. The final Random Forest ensemble model achieved an impressive accuracy and recall on the validation data, demonstrating its effectiveness in classifying patients at risk.

## Business Understanding

Stroke is the second leading cause of death globally, responsible for approximately  11% of total deaths. By predicting the likelihood of a patient getting a stroke, healthcare organizations can implement targeted interventions and prevention measures, ultimately improving patient outcomes and reducing the burden of stroke.

## Data Understanding

The dataset used for this project consists of various features related to patients, including gender, age, various diseases, and smoking status. The data was preprocessed to handle missing values and outliers, ensuring its suitability for model training.

## Modeling and Evaluation

A Random Forest ensemble model was developed and evaluated using several metrics, including accuracy, recall, and auc score. The model achieved exceptional performance, indicating its potential for clinical use.

## Feature Importance

The model identified key factors contributing to stroke risk, such as age, work type, and glucose levels. These insights can inform targeted interventions and public health campaigns.

## Conclusion

The predictive model developed in this project effectively classifies patients at risk of stroke. This model can automate the initial stages of the claims process, thereby increasing response time and improving overall system efficiency. Future steps to expand on this project could include refining the model to handle more complex scenarios or integrating it into a broader content moderation system.

To get started with this project, clone the repository and follow the instructions in the `README.md` file.

## Prerequisites

- R version  4.0.0 or later
- tidymodels, tidyverse, workflows, tune, caret, ranger packages

## Installation

1. Clone the repository:

