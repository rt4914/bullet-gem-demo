# README

This is a bullet gem demo in ruby on rails.

## Setup instructions
1. This project was created with Rails 7.0.8 & ruby 3.1.4
2. Clone this repository
3. In main project folder, start the server using `./bin/dev`

NOTE: `rails s` or `rails server` won't work correctly because I have used TailwindCSS in this and using rails command will build only rails code and not compile css for TailwindCSS.

## Understanding N+1 query problem
In Rails, the N+1 query problem refers to a common performance issue that occurs when accessing associations in a loop or batch operation. It arises when code generates one query to retrieve a collection of records and then issues an additional query for each record to fetch associated data. This results in N+1 queries being executed where N represents the number of records retrieved in the initial query.

For example, consider the following scenario where you have a User model that has many posts, and you want to iterate over all users and access their posts:

users = User.all
users.each do |user|
  puts user.hobbies.count
end

If you have 100 users, this code will execute one query to fetch all users and then 100 additional queries to fetch posts for each user individually. This leads to poor performance, especially as the number of users grows.

## Solution

To address the N+1 query problem in Rails, you can use eager loading techniques such as includes, preload, or joins to load associated records in advance, reducing the number of queries executed.

users = User.includes(:posts)
users.each do |user|
  puts user.hobbies.count
end

With includes, Rails will fetch all users and their associated posts in just two queries (one for users and one for posts), regardless of the number of users. This significantly improves performance compared to the N+1 query approach.

## How to idenify if N+1 query issue exists?
For this we can use bullet-gem which specificly alerts the developer when the query is not optimised.

## Implementing the code
1. Run the server
2. Check that everything works
3. Follow all `TODO`'s in code step-by-step which should fix all N+1 query problems.
4. You can find all TODO's by searching `TODO` string.

## Full Video on Youtube


## Website
[Portfolio Website](https://rajattalesra.netlify.app/)



