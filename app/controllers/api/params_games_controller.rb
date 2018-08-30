class Api::ParamsGamesController < ApplicationController

  def name_caps
    @input_name = params["my_name"]
    @input_name = @input_name.upcase
    render 'name_params_view.json.jbuilder'
  end

  def first_letter
    @input_name2 = params["first_letter"]
    if @input_name2[0].downcase == "a" 
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
      render 'letter_params_view.json.jbuilder'
  end

  def number_guess
    @number = params["guess_number"].to_i
      target = 42

      if @number > target
        @message = "Too high"
      elsif @number < target
        @message = "Too low"
      else 
        @message = "Correct!"
      end
    render 'guess.json.jbuilder'
  end
end
