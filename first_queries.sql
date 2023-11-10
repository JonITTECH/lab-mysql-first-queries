use myfirstqueries;

SELECT * FROM applestore2;

/*1 Different genres*/
SELECT DISTINCT prime_genre 
FROM applestore2;

/*2 Which is the genre with more apps rated?*/
SELECT prime_genre, MAX(cont_rating) AS count_of_rating
FROM applestore2
GROUP BY prime_genre;

/*3 Which is the genre with more apps?*/
SELECT prime_genre, COUNT(*) AS count_of_apps
FROM applestore2
GROUP BY prime_genre
ORDER BY count_of_apps DESC
LIMIT 1;

/*4 Which is the one with less?*/
SELECT prime_genre, COUNT(*) AS count_of_apps
FROM applestore2
GROUP BY prime_genre
ORDER BY count_of_apps ASC
LIMIT 1;

/*5 Take the 10 apps most rated*/
SELECT track_name, cont_rating
FROM applestore2
ORDER BY cont_rating DESC
LIMIT 10;

/*6 Take the 10 apps best rated by users*/
SELECT track_name, user_rating
FROM applestore2
ORDER BY user_rating DESC
LIMIT 10;

/*7 Take a look on the data you retrieved in the question 5. Give some insights*/
/*There is a significant number of applications that have been rated the same number of times. */ 
/*It is also important to note that a considerable portion of the application names are not valid, */ 
/*so we should clean the data before working with it.*/

/* 8. Take a look on the data you retrieved in the question 6. Give some insights.*/
/*We can see that the maximum score they can receive is 5, so there would be many more than 10 applications*/ 
/*with this rating. Also, we can see that some application names are misspelled or not valid. */

/*9. Now compare the data from questions 5 and 6. What do you see?*/
/*None of the names match, so those higher-rated applications probably haven't been rated by as many users as desired,*/ 
/*as this would provide more consistency. Additionally, we see that in both cases, there are many applications with*/ 
/*as in valid name.*/

/*10. How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT track_name, user_rating, cont_rating
FROM applestore2
ORDER BY user_rating DESC, cont_rating DESC
LIMIT 10;

/*11. Does people care about the price?*/
SELECT track_name, user_rating, cont_rating, price
FROM applestore2
ORDER BY price DESC
LIMIT 20;
/*As I couldn't find any column indicating 'sales,' and I'm not familiar with the meaning of many others,*/ 
/*I have sorted the games by price to see their ratings and the number of votes. It appears that they have good ratings,*/ 
/*so I don't believe the price will have an impact.*/