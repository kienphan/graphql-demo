Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"

  resources :users do
    get '/list', to: "users#list", on: :collection
  end
end
