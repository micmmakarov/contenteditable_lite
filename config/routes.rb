Contenteditable::Engine.routes.draw do
  resources :contents
  post "content_update" => "contents#content_updates"
end
