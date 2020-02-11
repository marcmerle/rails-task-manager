Rails.application.routes.draw do
  # read all tasks
  get 'tasks', to: 'tasks#index'
  # create a task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # read a task
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update', as: 'patch'
  # delete a task
  delete 'tasks/:id', to: 'tasks#destroy', as: 'destroy'
end
