SELECT posts.title as posts_title, comments.body as posts_comments
FROM posts
LEFT JOIN comments
ON posts.id = comments.post_id
ORDER BY posts_title;
