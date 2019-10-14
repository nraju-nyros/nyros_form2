Rails.application.routes.draw do
  get 'simulate/failure'
  mount NyrosForm2::Engine => "/nyros_form2"
end
