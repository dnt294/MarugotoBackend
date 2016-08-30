Rails.application.routes.draw do

    root 'home#welcome'

    resources :examples
    resources :lessons
    resources :verb_forms
    resources :new_words

    resources :kanjis

    get '/search_kanjis_by_lesson', to: 'kanjis#search_by_lesson', as: :search_kanjis_by_lesson

end
