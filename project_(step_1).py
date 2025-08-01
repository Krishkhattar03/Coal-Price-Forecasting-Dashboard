# -*- coding: utf-8 -*-
"""Apana time project (STEP 1).ipynb

Automatically generated by Colab.

Original file is located at
    https://colab.research.google.com/drive/1seEiGh_e1t2LWk0jeuSFtkhnZ3Pdj72x
"""

import pandas as pd
import numpy as np
import seaborn as sns

#Importing and loading data set


# Correct method for Excel file
data = pd.read_excel("/content/Data set (2) (1).xlsx")

# Correctly aligned print statement
print(data.head())

#Understanding the data and performing EDA
data.head()

data.tail()

data.info()

data.shape

data.describe()

data.columns

data.nunique()

#data cleaning
#Checking Null values
data.isnull().sum()

#calculating null percentage

null_percentage = (data.isnull().sum() / len(data)) * 100

# Show columns with most missing values first
print(null_percentage.sort_values(ascending=False))

numeric_data = data.select_dtypes(include =[np.number])

# Replacing null values in numeric columns with their mean
for columns in numeric_data:
    data[columns] = data[columns].fillna(data[columns].mean())

#Checking again after replacing the null values with mean
data.isnull().sum()

# Calculating central tendency (Mean,Mode,Median)

# Mean
mean=numeric_data.mean()

print('mean\n',mean)

# mode
mode = numeric_data.mode()
print('mode\n',mode)

#median
median = numeric_data.median()

print('median\n',median)

#calculating dipersion [Varience,standard deviation , range]
#Varience
varience = numeric_data.var()

print('varience\n',varience)

# Standard deviation
SD = numeric_data.std()

print('Standard Deviation \n',SD)

#Range
range = numeric_data.max() - numeric_data.min()
print('range\n',range)

#skewness
skewness = numeric_data.skew()
print('skewness\n',skewness)

#kurtosis
kurtosis = numeric_data.kurtosis()

print('kurotsis\n',kurtosis)

