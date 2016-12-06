# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
email           | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique
gender          | string    | not null, indexed
sexuality       | string    | not null, indexed
age             | integer   | not null, indexed
location        | integer   | not null, indexed
summary         | text      |
doing           | text      |
good_at         | text      |
favorites       | text      |
thinking        | text      |
friday          | text      |
message_if      | text      |
prof_pic_url    | string   | 

## photos
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key, indexed
photo_url   | string    | not null

## likes
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
liker_id    | integer   | not null, foreign key, indexed
likee_id    | integer   | not null, foreign key, indexed

## questions
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null

## answers
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
question_id | integer   | not null, foreign key, indexed
title       | string    | not null

## user_answers
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key, indexed
answer_id   | integer   | not null, foreign key, indexed
weight      | integer   | not null

## threads
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id_one | integer   | not null, foreign key, indexed
user_id_two | integer   | not null, foreign key, indexed

## messages
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
author_id   | integer   | not null, foreign key, indexed
thread_id   | integer   | not null, foreign key, indexed
body        | text      | not null
