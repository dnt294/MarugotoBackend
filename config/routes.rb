Rails.application.routes.draw do


  resources :new_words
    root 'home#welcome'

    resources :kanjis

    get '/search_kanjis_by_lesson', to: 'kanjis#search_by_lesson', as: :search_kanjis_by_lesson

end
