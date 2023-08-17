Rails.application.routes.draw do
  # 新規投稿
  get 'books/new'
  post 'books' => 'books#create'
  # 投稿一覧
  get 'books' => 'books#index'
  # 詳細画面
  get 'books/:id' => 'books#show', as: 'book'
  # 編集画面,及び更新
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  # トップ画面
  get '/' => 'homes#top'
  # 削除
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  
  
  # resources :books
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
