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


## 2) Managing Movie Release Dates in Relational Databases: Add Years Movie Released

This query aims to retrieve all movies in which the actor Leonardo DiCaprio played the role of protagonist. The INNER JOIN clause is used to combine records from the actors and movies tables based on a common key: actors.id_actor = movies.id_protagonist. This relationship ensures that only movies with valid references to an actor as a protagonist are selected.	


__Code:__


<img width="454" height="140" alt="Image" src="https://github.com/user-attachments/assets/a7698a34-c075-458f-ba8a-4450ae425f6e" />

__code result:__


<img width="326" height="107" alt="Image" src="https://github.com/user-attachments/assets/cc8d1432-4664-4155-a44d-1c6637246aff" />


#### 3)Total Movie Appearances of a Famous Protagonist Actor ‘Leonardo DiCaprio’

This query aims to retrieve all movies in which the actor Leonardo DiCaprio played the role of
protagonist. The INNER JOIN clause is used to combine records from the actors and movies
tables based on a common key: actors.id_actor = movies.id_protagonist. This relationship
ensures that only movies with valid references to an actor as a protagonist are selected.

<img width="613" height="205" alt="Image" src="https://github.com/user-attachments/assets/d1c8ba4a-8e47-45d0-b304-9bb09c1ba617" />

__Result:__

<img width="410" height="160" alt="Image" src="https://github.com/user-attachments/assets/c7f2723b-e80b-49c5-bdec-27d017cb2403" />


## 4) List of directors commonly chosen by each user.

To improve project, a new list is generated using functions such as GROUP_CONCAT to count
the number of directors users usually choose when they decide to watch a series. First, the
COUNT function, as we learned in class, is used to determine the number of directors,
followed by GROUP_CONCAT. The JOIN function is an important way to navigate through the
tables and obtain the result

__Code:__
<img width="561" height="267" alt="image" src="https://github.com/user-attachments/assets/ca12ae87-8295-4b14-aa0b-5aa48019c5fc" />

__Result__
<img width="501" height="159" alt="Image" src="https://github.com/user-attachments/assets/8092c44a-e6a8-4683-8136-cf2f437bc8ae" />



## 5) Conclusion

The Ireflix project demonstrates the integration of SQL and MySQL in building and scalable
streaming platform capable of managing large datasets. By implementing a relational
database structure, the platform ensures efficient organization of information related to
movies, series, users, and their interactions. Key database operations such as INNER JOIN,
ALTER TABLE, and UPDATE were employed to manipulate and analyze data, including tracking
actor participation and updating release dates



## 6) References

- DuBois, P. (2013) MySQL. 5th edn. Boston: Addison-Wesley. Available at:
https://books.google.com.br/books?hl=ptBR&lr=&id=JgFTUsIC0bUC&oi=fnd&pg=PT31&dq=mysql&ots=DuVJzOPxJn&sig=E3CjmEiknsz
WUDv825pVsfXdODk#v=onepage&q&f=false (Accessed: 17 May 2025).

- Oracle. (2024). What is MySQL? MySQL 8.4 Reference Manual. Available at:
https://dev.mysql.com/doc/refman/8.4/en/what-is-mysql.html [Accessed 20 May 2025].

- Amazon Web Services. (n.d.). What is SQL?. Available at: https://aws.amazon.com/whatis/sql/ [Accessed 19 May 2025].

- W3Schools, 2024. SQL INNER JOIN Keyword. [online] Available at:
https://www.w3schools.com/sql/sql_join_inner.asp [Accessed 2 Jun. 2025].

- Stack Overflow, 2012. SQL Count from inner join. [online] Available at:
https://stackoverflow.com/questions/10475218/sql-count-from-inner-join [Accessed 2 Jun.
2025].

- Pure Storage. (n.d.). What is MongoDB and how does it work? Retrieved June 2, 2025,
from https://www.purestorage.com/uk/knowledge/what-is-mongodb.html

Spiegel, P. (2016) 'GROUP_CONCAT multiple fields with a different separator', Stack
Overflow, 7 August. Available at: https://stackoverflow.com/questions/38816859/groupconcat-multiple-fields-with-a-different-separator (Accessed: 2 June 2025).
