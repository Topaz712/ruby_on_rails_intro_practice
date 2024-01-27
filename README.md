# ruby_on_rails_intro_practice
(Exercise - Using the Rails CLI to generate a model) --- Lesson - Introduction to Ruby on Rails as an API ---

--- Exercise one --- 
- Create post model with cli
- Done, is in folder/file

--- Exercise two --- 
- Create a Post model with the following attributes:

- title: "Hello World"
- body: "This is my first post"
- published: true
- published_at: 2023-12-30 19:17:08
 
-- In rails console:
```
Post.create(title: "Hello World", body: "This is my fir
st post", published: true, published_at: "2023-12-30 19:17: 08")
```
Result:
```
id: 1,
title: "Hello World",
body: "This is my first post",
published: true,
published_at: Sat, 30 Dec 2023 19:17:08.000000000 UTC +00:00,
created_at: Sat, 27 Jan 2024 05:48:22.733233000 UTC +00:00,
updated_at: Sat, 27 Jan 2024 05:48:22.733233000 UTC +00:00>
```

- Find the post and update the post with the following attribute:
- published: false
```
post = Post.find(1)
post.update(published: false)
```
Result:
```
TRANSACTION (0.1ms)  begin transaction
  Post Update (1.5ms)  UPDATE "posts" SET "published" = ?, "updated_at" = ? WHERE "posts"."id" = ?  [["published", 0], ["updated_at", "2024-01-27 05:58:20.381672"], ["id", 1]]
  TRANSACTION (1.0ms)  commit transaction
 => true 
```
Checked with `post.reload' and it showed:
```
id: 1,
title: "Hello World",
body: "This is my first post",
published: false,
published_at: Sat, 30 Dec 2023 19:17:08.000000000 UTC +00:00,
created_at: Sat, 27 Jan 2024 05:48:22.733233000 UTC +00:00,
updated_at: Sat, 27 Jan 2024 05:58:20.381672000 UTC +00:00>
```

- Then delete the post.
```
post = Post.find(1)
post.destroy
```
Result:
```
TRANSACTION (0.1ms)  begin transaction
  Post Destroy (1.1ms)  DELETE FROM "posts" WHERE "posts"."id" = ?  [["id", 1]]
  TRANSACTION (0.6ms)  commit transaction
 => 
#<Post:0x00007f11bf58ba60
 id: 1,
 title: "Hello World",
 body: "This is my first post",
 published: false,
 published_at: Sat, 30 Dec 2023 19:17:08.000000000 UTC +00:00,
 created_at: Sat, 27 Jan 2024 05:48:22.733233000 UTC +00:00,
 updated_at: Sat, 27 Jan 2024 05:58:20.381672000 UTC +00:00>
```
Checked with `post.reload` after and got:
`ActiveRecord::RecordNotFound`
