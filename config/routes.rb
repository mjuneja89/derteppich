Rails.application.routes.draw do
  
  root 'home#home'

  get '/handtufted' => 'carpets#handtufted'

  get '/handloomweave' => 'carpets#handloomweave'

  get '/handloomdurries' => 'carpets#handloomdurries'

  get '/adminview' => 'admin#adminview'

  resources :carpets

  resources :contacts

  get '/contact' => 'contacts#contact'

end
