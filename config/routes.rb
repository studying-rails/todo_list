TodoList::Application.routes.draw do
  root to: redirect('/todo_items')

  resources :todo_items, only: %w(index create update destroy)
end
