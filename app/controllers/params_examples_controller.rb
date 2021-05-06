class ParamsExamplesController < ApplicationController
  def query_params
    my_message = params[:my_message]
    render json: {message: "The message is #{my_message}"}
  end

  def query_name
    user_name = params[:name].upcase
    output_message = "Your name is #{user_name}"
    if user_name.starts_with?("A")
      output_message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render json: {message: output_message}
  end

  def query_guess
    user_guess = params[:user_guess].to_i
    winning_number = 36
    if user_guess > winning_number
      output_message = "You guessed too high!"
    elsif user_guess < winning_number
      output_message = "You guessed too low!"
    else
      output_message = "You win!"
    end
    render json: {message: output_message}
  end

  def url_params
    render json: {message: "Sanity check"}
  end
end
