/* 1 Create a query to get all fields from the users table */
SELECT * FROM users;

/* 2 Create a query to get all fields from the posts table where the user_id is 100 */
SELECT * FROM posts WHERE user_id=100;

/* 3 Create a query to get all posts fields, the user's first name, and the user's last name, from the posts table where the user's id is 200 */
SELECT title, url, content, posts.created_at, posts.updated_at, first_name, last_name FROM posts, users
WHERE user_id = 200;

/* 4 Create a query to get all posts fields, and the user's username, from the posts table where the user's first name is 'Norene' and the user's last_name is 'Schmitt' */
SELECT posts.title, posts.url, posts.content, posts.created_at, posts.updated_at, users.username FROM posts, users WHERE
first_name='Norene' AND last_name='Schmitt';

/* 5 Create a query to get usernames from the users table where the user has created a post after January 1, 2015 */
SELECT username FROM users, posts WHERE
posts.created_at>'2015-01-01';

/* 6 Create a query to get the post title, post content, and user's username where the user who created the post joined before January 1, 2015 */
SELECT posts.title, posts.content, users.username FROM users
INNER JOIN posts
posts.created_at<'2015-01-01';

/* 7 Create a query to get the all rows in the comments table, showing post title (aliased as 'Post Title'), and the all the comment's fields */
SELECT posts.title, comments.id, comments.body, comments.created_at, comments.updated_at FROM comments
WHERE posts.id=comments.post_id;

/* 8 Create a query to get the all rows in the comments table, showing post title (aliased as post_title), post url (ailased as post_url),
and the comment body (aliased as comment_body) where the post was created before January 1, 2015 */


/* 9 Create a query to get the all rows in the comments table, showing post title (aliased as post_title), post url (ailased as post_url),
and the comment body (aliased as comment_body) where the post was created after January 1, 2015 */


/* 10 Create a query to get the all rows in the comments table, showing post title (aliased as post_title), post url (ailased as post_url),
and the comment body (aliased as comment_body) where the comment body contains the word 'USB' */