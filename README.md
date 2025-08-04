# Movie and Series Query

1. Introduction
2. Import Data to the SQL workbench and create fictional DATABASE.
3. Create a comando SQL users table, Actors table, directors table, Movies table, Movies series, UserMoviesActivity table, UserSeriesActivity table.
4. Managing Movie Release Dates in Relational Databases: Add Years Movie Released
5. Total Movie Appearances of a Famous Protagonist Actor ‘Leonardo DiCaprio’
    - select 'Leaonaro DiCaprio' and movies he participated in.
    - count movies He Leaonardo DiCaprio participeted in.
7. Obtain the list of actors who were protagonist in movies
    - looking for evalute my project I will obtain a list of directs commum choosed for each users.
8. Conclusion  
9. References

 ## 1) Introduction

 The base objective of the project is to demonstrate and explain the Big Data paradigm, focusing on how MySQL can be used to efficiently organize and manage large volumes of media data. Additionally, the project explores how SQL can simplify database tasks and provide solutions for data analysis.  

 The database will consist of several connected tables with specific structure below:
Users, UserSeriesActivity, movies, series, directors and actors. the primary keys identify each record in a table, while foreign keys establish relationships between tables to maintain referential integrity.

<img width="637" height="369" alt="Image" src="https://github.com/user-attachments/assets/05a21b50-7f4c-4c2d-acc4-9188d1db4d0d" />
https://github.com/Pagnoncelliander/Movie-Series-Data/issues/1#issue-3289224730




__Table	Links To (Foreign Key)	Relationship Description__
 * movies ➡️	actors, directors	➡️ Connects each movie to one actor and one director
 * series	➡️actors, directors ➡️	Connects each series to one actor and one director
 * UserMoviesActivity	➡️ users, movies	➡️Tracks which users watched which movies
 * UserSeriesActivity	➡️ users, series	➡️Tracks which users watched which series


## 3) Managing Movie Release Dates in Relational Databases: Add Years Movie Released

This query aims to retrieve all movies in which the actor Leonardo DiCaprio played the role of protagonist. The INNER JOIN clause is used to combine records from the actors and movies tables based on a common key: actors.id_actor = movies.id_protagonist. This relationship ensures that only movies with valid references to an actor as a protagonist are selected.	


__Code:__
<img width="454" height="140" alt="Image" src="https://github.com/user-attachments/assets/a7698a34-c075-458f-ba8a-4450ae425f6e" />

__code result:__
<img width="326" height="107" alt="Image" src="https://github.com/user-attachments/assets/cc8d1432-4664-4155-a44d-1c6637246aff" />

#### Explained Variance 

In this step, I create a graph to understand which principal component is most suitable for applying PCA. The column spam (from the spam_dataset) is the independent variable that has been removed from the dataset. The explained_variance_ratio_ is an attribute of the PCA object that indicates the proportion of variance explained by each of the principal components. The graph shows the relationship between the number of components (ranging from 2 to 10) and the performance of the analysis. In this case, I tested around 10 different numbers of components, and 10 components proved to be the optimal choice for achieving better analytical performance.

1. Get the cumulative explained variance
2. Create a graph to check the number of component for analyct


## 5) Principal Component Analysis (PCA) 

PCA is a technique to reduce the number of features while retaining as much variance as possible. This is useful when dealing with high-dimensional data. The StandardScaler was applied to the dataset, and After normalization technique has been applied, as shown in the class on 18/11 (StandardScaler). With this, it was possible to apply PCA and reduce the dimensionality, obtaining 10 independent components (columns) and 1 dependent column to better use the data in machine learning.

1. Apply the StandardScaler to all the columns of the DataFrame.
2. Normalize Data
3. Apply PCA
4. Created a New columns to replace the data frame
5. Replace the names of spam column "True" and "False" to numbers 0 and 1.
6. A new DataFrame is created with the columns from spam_pca (independent variables) and the column df["is_spam"] (dependent variable).


## 6) Machine Learning Method 

In this part of the project, I imported some libraries for machine learning tests to identify which one best fits to achieve 99% accuracy. The Random Forest model stood out, as mentioned on the scikit-learn website.

A Random Forest is a meta-estimator that fits a number of decision tree classifiers on various sub-samples of the dataset and uses averaging to improve predictive accuracy and control overfitting{8}.

This method showed the highest level of accuracy, indicating that the model achieved an average performance of 98.72%. The small standard deviation (0.75%) suggests that the model is consistent. A box plot was created to better visualize each test.

Explanation
1. Train-Test Split: The dataset is split into 80% training and 20% testing data.
2. Predictions: The model predicts the is_spam class for the test data.
3. Model Training: some models is fitted on the training data and test.
4. Boxplot has been ploted to undertand whic model is better.
5. The Random Florest model has shown better performance and was implemented.

## 7) Conclusion

The dataset consists of 4601 rows and 59 columns, with some missing values. After cleaning the data (removing the 'Unnamed' column, converting object columns to numeric, and filling missing values), I verified the dataset using the info() function.
To determine the optimal number of principal components for PCA, I removed the 'spam' column (the independent variable) and analyzed the explained_variance_ratio_. I tested various numbers of components and found that 10 components provided the best analytical performance. PCA was applied to reduce the dimensionality, and StandardScaler was used for data normalization.
For machine learning, I tested multiple models to achieve 99% accuracy. The Random Forest model, which uses decision trees and averaging to improve accuracy, stood out. It achieved an average accuracy of 98.72% with a low standard deviation (0.75%), indicating high performance and consistency. A box plot was used to visualize the results.
In conclusion, Random Forest was the most effective model, and PCA helped improve the analysis by reducing dimensionality obtain a significant result bellow:

- **540** is the number of non-spam correctly classified as non-spam (true negative).
- **12** is the number of non-spam classified as spam (false positive).
- **16** is the number of spam classified as non-spam (false negative).
- **353** is the number of spam correctly classified as spam (true positive).


## 8) References

{1} Stack Overflow (2016) Better way to drop NaN rows in pandas. Available at: https://stackoverflow.com/questions/36370839/better-way-to-drop-nan-rows-in-pandas (Accessed: 20 June 2024).

{2}Stack Overflow (2014) Selecting pandas columns by dtype. Available at: https://stackoverflow.com/questions/21271581/selecting-pandas-columns-by-dtype (Accessed: 20 December 2024).

{3}Pandas Documentation (n.d.) pandas.DataFrame.select_dtypes. Available at: https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.select_dtypes.html (Accessed: 20 December 2024).

{4}Pandas Documentation (n.d.) pandas.to_numeric. Available at: https://pandas.pydata.org/docs/reference/api/pandas.to_numeric.html (Accessed: 20 December 2024).

{5}Stack Overflow (2014) How to convert column to numeric in pandas. Available at: https://stackoverflow.com/questions/21997808/how-to-convert-column-to-numeric-in-pandas (Accessed: 20 December 2024).

{6}Ryan & Matt Dataset. (7 de set. de 2023). Title of video. Website name. Available at: URL (Accessed: 10 December 2024).
PCA Analysis in Python Explained (Scikit - Learn).YouTube. Available at: https://www.youtube.com/watch?v=6uwa9EkUqpg (Accessed: 10/12/2024).

{7}Ryan & Matt Data Science. 2023r).Python Feature Scaling in SciKit-Learn (Normalization vs Standardization)o. YouTube. Available at: https://www.youtube.com/watch?v=6eJHk8JYK2M (Accessed 19 December 2024r).

{8}scikit-learn (2024) sklearn.ensemble.RandomForestClassifier, version 1.5. Available at: https://scikit-learn.org/1.5/modules/generated/sklearn.ensemble.RandomForestClassifier.html (Accessed: 20 June 2024).

{9}Ryan & Matt Data Science. 2023).Random Forest Algorithm Explained with Python and scikit-learn (Normalization vs Standardization)o. YouTube. Available at: https://www.youtube.com/watch?v=_QuGM_FW9eo (Accessed 19 December 2024).
