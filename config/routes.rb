Rails.application.routes.draw do

  namespace :new_word do
    resources :verb_forms
  end
  namespace :new_word do
    resources :adj_forms
  end
  namespace :new_word do
    end
  namespace :new_word do
    end
    root 'home#welcome'

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
