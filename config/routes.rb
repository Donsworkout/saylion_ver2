Rails.application.routes.draw do
  root 'posts#index'
  resources :posts, except: [:show] #show 액션 뺴고 라우팅 해주세요!
  get 'intros/index'
end
