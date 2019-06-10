Rails.application.routes.draw do
  get "crickets/home" 
get "crickets/country", :as => :country
get "crickets/slider"


root 'crickets#home'


  get "crickets/index" , :as => :index
  #   get "crickets/india"
get 'crickets/getstatus/:country', controller: 'crickets', action: 'index2',  :as => :index2
 # get "crickets/pakistan"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
