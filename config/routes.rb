Rails.application.routes.draw do
    get 'huangjin' => 'welcome#huangjin'
    get 'baiyin' => 'welcome#baiyin'
    get 'heitie' => 'welcome#heitie'
    get 'guanzhu' => 'jobs#guanzhu'
  devise_for :users
  resources :jobs do
    resources :resumes
  end
  resources :welcome do

  end
  root 'welcome#index'
  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end
      resources :resumes
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
