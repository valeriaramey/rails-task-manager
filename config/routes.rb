Rails.application.routes.draw do
  # index in the browser to list all tasks
  get 'tasks', to: 'tasks#index'
  # display NEW task form in the browser
  get 'tasks/new', to: 'tasks#new'
  # Create a new task i nthe serrver
  post 'tasks', to: 'tasks#create'
  # Edit FORM to update the task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  # UPDATE in the server
  patch 'tasks/:id', to: 'tasks#update'
  # to read one task
  get 'tasks/:id', to: 'tasks#show', as: :task
end
