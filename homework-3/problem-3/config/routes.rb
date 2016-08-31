Rails.application.routes.draw do
  root('homework#index')
  get('secondpage' => 'homework#anotherpage')
end
