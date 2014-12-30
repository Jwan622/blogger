Rails.application.routes.draw do
  resources :articles  #this basically allows you to go to http://localhost:3000/articles/ and the program will know you're looking
                        #for a list of articles. So, this sets up a route pretty much.
end
