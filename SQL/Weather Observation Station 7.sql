/*
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
*/

select distinct city from station
 where right(city,1) = 'a'
 or
 right(city,1) = 'e'
 or
 right(city,1) = 'i'
 or
 right(city,1) = 'o'
 or
 right(city,1) = 'u'
