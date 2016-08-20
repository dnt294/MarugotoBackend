Rails.application.routes.draw do


    root 'home#welcome'

    resources :kanjis
end
