Rails.application.routes.draw do
  get "/query_params" => "params_examples#query_params"
end
