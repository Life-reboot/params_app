Rails.application.routes.draw do
  namespace :api do
    get "/query_params_url" => "params_examples#query_params_action"
    get "/segment_params_url/:this_is_a_variable" => "params_examples#segment_params_action"
    post "/body_params_url" => "params_examples#body_params_action"

    get "/name_url" => "games#name_method"
    get "/guess_url" => "games#guess_method"
    get "/guess_url/:the_users_guess" => "games#guess_method"
    post "/guess_url" => "games#guess_method"
  end
end
