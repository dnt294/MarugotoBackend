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
            get 'sort/:lesson', action: :sort, as: 'sort'
            get 'search'
        end
    end

    resources :verbs, only: [:index]

    resources :kanjis do
        collection do
            get 'sort'
            get 'search_by_entry_number'
        end
        member do
            get :components, :references
        end
    end

    resources :kanji_components
end
