Rails.application.routes.draw do
  get "crickets/home" 
get "crickets/country", :as => :country
get "crickets/slider", :as => :slider

get "crickets/slider_com_con" , :as => :slider_com_con
root 'crickets#home'
get 'crickets/compare/:country1/vs/:country2', controller: 'crickets', action: 'country_compare',  :as => :country_compare
  get "crickets/slider_c" , :as => :slider_c
get 'crickets/players/:player1/vs/:player2', controller: 'crickets', action: 'compare_players',  :as => :compare_players

  get "crickets/slider_com_players" , :as => :slider_com_players

  get "crickets/index" , :as => :index
  #   get "crickets/india"
get 'crickets/getstatus/:country', controller: 'crickets', action: 'index2',  :as => :index2
 # get "crickets/pakistan"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
