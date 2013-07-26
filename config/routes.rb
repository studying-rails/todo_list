TodoList::Application.routes.draw do
  root to: 'tasks#index'

  resources :tasks, only: %w(index create update destroy)
end
