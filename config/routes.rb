Rails.application.routes.draw do
  get "/query_params" => "params_examples#query_params"
  get "/query_name" => "params_examples#query_name"
  get "/query_guess" => "params_examples#guess"

  get "/url_params/:my_message" => "params_examples#url_params"
  get "/url_guess/:user_guess" => "params_examples#guess"

  post "/body_params" => "params_examples#body_params"
  post "/body_guess" => "params_examples#guess"
  post "/body_credentials" => "params_examples#body_credentials"
end