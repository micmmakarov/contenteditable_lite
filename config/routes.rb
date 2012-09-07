Contenteditable::Engine.routes.draw do
  resources :contents
  match "content_update" => "contents#content_update"
end
