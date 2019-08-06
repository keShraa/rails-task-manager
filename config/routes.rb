Rails.application.routes.draw do
  # List tasks
  get 'tasks',            to: 'tasks#index', as: :tasks

  # Add a new task
  get 'tasks/new',        to: 'tasks#new', as: :new_task
  post 'tasks',           to: 'tasks#create'

  # View details of a task
  # 'show' needs to be after 'new' route
  get 'tasks/:id',        to: 'tasks#show', as: :task

  # Edit a task
  get 'tasks/:id/edit',   to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id',      to: 'tasks#update'

  # Remove a task
  delete 'tasks/:id',     to: 'tasks#destroy'
end
