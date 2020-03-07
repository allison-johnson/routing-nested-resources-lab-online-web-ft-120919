Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:index, :show]
    #=> /artists/:id/songs (index)
    #=> /aritsts/:id/song/:id (show)
  end

  resources :songs
end
