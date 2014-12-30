10) Up and Running

definitions:
Migrations: migrations, used to structure the database, are stored in the db folder.Rails uses migration files to perform modifications to the database. Almost any modification you can make to a DB can be done through a migration.
generator:
model: Models are Ruby classes. They talk to the database, store and validate data, perform the business logic and otherwise do the heavy lifting. Active Record is the M in MVC - the model - which is the layer of the system responsible for representing business data and logic. Active Record facilitates the creation and use of business objects whose data requires persistent storage to a database. Maybe you can just understand the model as the table?
controller: Controllers do the work of parsing user requests, data submissions, cookies, sessions and the “browser stuff”. They’re the pointy-haired manager that orders employees around. The best controller is Dilbert-esque: It gives orders without knowing (or caring) how it gets done.
web server: (mongrel, WEBrick, etc.) receives the request. It uses routes to find out which controller to use: the default route pattern is “/controller/action/id” as defined in config/routes.rb.


commands:
bin/rails server  : starts the server
bin/rails generate model Article : creates Article model and the required files.
rails : command is used for generating new projects
bin/rails : command is used for controlling Rails.
bin/rake db:migrate : that's how you run a migration file.
bin/rails console : that's how you have access to your application. console is the command line interface to your application.
once inside the application, you can access the model. Type Article.all
bin/rails generate controller Articles. : creates the controller. Then a file named app/controllers/articles_controller.rb is created.




view the app:
http://0.0.0.0:3000
or
http://localhost:3000
They are all loopback addresses that take you to the same spot.


migrations:
Rails uses migration files to perform modifications to the database. Almost any modification you can make to a DB can be done through a migration.
-database agnostic. SQLite3 and PostgreSQL both work
-the migration filename has a timestamp.
-the migration has a change method which itself has a create_table method. the variable t inside the block references the table
we call methods on t to create columns. the method names on t are the type of data in the column.
-the migration name is the class of the migration file.


setting up the router:
-so we created articles using the model we created.
-the router's config file is in config/routes.rb
-add resources :articles to the routes file. that line says we have a resource named articles (I think this referse to the data
  migration file?)
-it then creates a route that redirects to the index method of ArticlesController.


how the route works:
-the resources :articles line sets up a route that also sets up demand for controller called ArticlesController. We need to create the controller with bin/rails generate controller Articles. Then a file named app/controllers/articles_controller.rb
is created. We then need to create the index method.


The controller:
-You need to run bin/rails generate controller Articles first to create a controller. The need for this controller was created when you added resources :articles to the config/routes.rb
-The ArticlesController has an index method which has an instance variable which then automatically redirects to a view.


If you type in Article.all after running bin/rails console, there is an id attribute because of reflection


steps in short
1) create a route using resources :articles
2) that then requires us to make a controller with an index method
3) that index method needs to have an instnace variable
4) Taht instance variable gets passed to an index.html.erb







11)
the format for the view is:
new.html.haml
the first piece "new" matches the controller method.



-simply defining a method new inside the controller automatically calls the view. You only put something inside of it if you need the instance variable passed to the view.
