Rails.application.routes.draw do
 root('home#index')
 get 'contact' => ('home#contact')
 post'thank' => ('home#thank')
end
