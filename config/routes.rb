Rails.application.routes.draw do
  namespace :api do
    get "caps_name_url" => 'params_games#name_caps'
    get "first_letter_url" => 'params_games#first_letter'
    get "number_guess_url/:guess_number" => 'params_games#number_guess'
  end
end