Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts, except: [:show] do
      resources :comments, only: [:create, :destroy]    
  end #show 액션 뺴고 라우팅 해주세요!
  get 'intros/index'
end
