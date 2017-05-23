Rails.application.routes.draw do

  # Routes for the Concentration resource:
  # CREATE
  get '/concentrations/new', controller: 'concentrations', action: 'new', as: 'new_concentration'
  post '/concentrations', controller: 'concentrations', action: 'create', as: 'concentrations'

  # READ
  get '/concentrations', controller: 'concentrations', action: 'index'
  get '/concentrations/:id', controller: 'concentrations', action: 'show', as: 'concentration'

  # UPDATE
  get '/concentrations/:id/edit', controller: 'concentrations', action: 'edit', as: 'edit_concentration'
  patch '/concentrations/:id', controller: 'concentrations', action: 'update'

  # DELETE
  delete '/concentrations/:id', controller: 'concentrations', action: 'destroy'
  #------------------------------

  root to: 'students#index'
  # Routes for the Enrollment resource:
  # CREATE
  get '/enrollments/new', controller: 'enrollments', action: 'new', as: 'new_enrollment'
  post '/enrollments', controller: 'enrollments', action: 'create', as: 'enrollments'

  # READ
  get '/enrollments', controller: 'enrollments', action: 'index'
  get '/enrollments/:id', controller: 'enrollments', action: 'show', as: 'enrollment'

  # UPDATE
  get '/enrollments/:id/edit', controller: 'enrollments', action: 'edit', as: 'edit_enrollment'
  patch '/enrollments/:id', controller: 'enrollments', action: 'update'

  # DELETE
  delete '/enrollments/:id', controller: 'enrollments', action: 'destroy'
  #------------------------------

  # Routes for the Section resource:
  # CREATE
  get '/sections/new', controller: 'sections', action: 'new', as: 'new_section'
  post '/sections', controller: 'sections', action: 'create', as: 'sections'

  # READ
  get '/sections', controller: 'sections', action: 'index'
  get '/sections/:id', controller: 'sections', action: 'show', as: 'section'

  # UPDATE
  get '/sections/:id/edit', controller: 'sections', action: 'edit', as: 'edit_section'
  patch '/sections/:id', controller: 'sections', action: 'update'

  # DELETE
  delete '/sections/:id', controller: 'sections', action: 'destroy'
  #------------------------------

  # Routes for the Student resource:
  # CREATE
  get '/students/new', controller: 'students', action: 'new', as: 'new_student'
  post '/students', controller: 'students', action: 'create', as: 'students'

  # READ
  get '/students', controller: 'students', action: 'index'
  get '/students/:id', controller: 'students', action: 'show', as: 'student'

  # UPDATE
  get '/students/:id/edit', controller: 'students', action: 'edit', as: 'edit_student'
  patch '/students/:id', controller: 'students', action: 'update'

  # DELETE
  delete '/students/:id', controller: 'students', action: 'destroy'
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
