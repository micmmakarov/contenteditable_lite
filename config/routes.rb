Contenteditable::Engine.routes.draw do
  resources :contents
  match "content_update" => "contents#content_update"
  get "hi" => "contents#index"
end
