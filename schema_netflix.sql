raw_titles
-
id PK varchar(20)
title PK varchar(100) 
type varchar(20)
release_year int
age_certification varchar(10)
runtime int 
genres varchar(200)
production_countries varchar(10)
seasons varchar
imdb_id varchar(20)
imdb_score float
imdb_votes float

raw_credits
-
person_id PK int
id varchar(20) FK >- raw_titles.id
name varchar(100)
character varchar(100)
role varchar(50)

Best_Movies_Netflix
-
index
TITLE PK varchar(100) FK >- raw_titles.title 
RELEASE_YEAR int
SCORE float
NUMBER_OF_VOTES int
DURATION int
MAIN_GENRE varchar(50)
MAIN_PRODUCTION varchar(10)

Best_Shows_Netflix
-
index
TITLE PK varchar(100) FK >- raw_titles.title
RELEASE_YEAR int
SCORE float
NUMBER_OF_VOTES int
DURATION int
NUMBER_OF_SEASONS int
MAIN_GENRE varchar(50)
MAIN_PRODUCTION varchar(10)

Best_Movie_By_Year_Netflix
-
index
TITLE PK varchar(100) FK >- Best_Movies_Netflix.TITLE
RELEASE_YEAR
MAIN_GENRE
MAIN_PRODUCTION

Best_Show_By_Year_Netflix
-
index
TITLE PK varchar(100) FK >- Best_Shows_Netflix.TITLE
RELEASE_YEAR
SCORE
NUMBER_OF_SEASONS
MAIN_GENRE
MAIN_PRODUCTION