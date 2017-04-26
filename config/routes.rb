Rails.application.routes.draw do
  
  root 'home#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/handtufted' => 'carpets#handtufted'

  get '/handloomweave' => 'carpets#handloomweave'

  get '/handloomdurries' => 'carpets#handloomdurries'
 
  get '/handknotted' => 'carpets#handknotted'
  

  get '/adminview' => 'admin#adminview'

  resources :carpets

  resources :contacts

  get '/contact' => 'contacts#contact'


  get '/search' => "search#search"

end
