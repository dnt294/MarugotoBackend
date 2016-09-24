Rails.application.routes.draw do


    mount Ckeditor::Engine => '/ckeditor'
    root 'home#welcome'


    devise_for :users

    resources :grammars

    namespace :new_word do
        resources :verb_forms
        resources :adj_forms
    end

    resources :examples
    resources :lessons
    resources :new_words do
        collection do
            get 'sort'
        end
    end

    resources :kanjis do
        collection do
            get 'sort'
        end
    end

end
