# Blog Lab

For this weekend, we'd like you to start building the foundation for a blog. Your blog will have full CRUD on two resources, authors and posts. The association you should keep in mind is that one author can write many posts.

## Before you get started, read and review:

* [Rails Routing from the Outside In](http://guides.rubyonrails.org/routing.html)
    * Read [Nested Resources](http://guides.rubyonrails.org/routing.html#nested-resources), especially 2.7.2 Shallow Nesting
* [Active Record Associations](http://guides.rubyonrails.org/association_basics.html)
    * Read [ActiveRecord::Associations::ClassMethods](http://api.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html)
    * Especially, focus on understanding "Deleting from associations"
    * Read [Foreign Keys](http://guides.rubyonrails.org/active_record_migrations.html#foreign-keys)
* [Active Record Validations](http://guides.rubyonrails.org/active_record_validations.html)

## Getting started

1. Generate the rails application
2. Generate your models
	- authors should have a first_name, last_name and age
	- posts should have a title, body, category and author_id
	- one author has many posts, and when an author is deleted, the author's posts should be deleted as well.
3. Set up your associations and validations
	- all authors must have a first_name and last_name 
	- first_name and last_name should be between 4 and 20 characters long
	- age must be a number
	- all posts must have a title, body and category
	- the title must be at least 3 characters long
4. Test everything in Rails Console
	- if you have set up your associations correctly, you should be able to type 
	
		```
		a = Author.create(first_name: "Elie", last_name: "Schoppik", age: 26)
		a.posts # this should not throw an error
		
		p = Post.create(title: "First post", body: "Awesome post", category: "none", author_id: 1)
		p.author # this should not throw an error either
		```
5. Generate your controllers and views
	- make sure you give both of your resources full CRUD
6. Refactor your routes to use resources
	- since you have a model that belongs to another, you will be using nested resources.
7. Start working on the controllers
	- Make sure you are displaying any errors upon creation/updating as well as flash messages when data is added/changed
9. All of your views should use Rails form and link helpers. You should not be writing `<form>` or `<a>` tags at all!


## Bonus

1. Once your application is working, add bootswatch and style the app!
2. Add some interactivity to your page!


