class Api::GamesController < ApplicationController
  def name_method
    input_name = params["query_name"]
    @output_message = input_name.upcase
    if @output_message.starts_with?("A")
      @output_message += " (hey your name starts with A)"
    end
    render "name.json.jb"
  end

  def guess_method
    winning_number = 32
    input_guess = params["the_users_guess"].to_i
    if input_guess > winning_number
      @message = "Pick lower!"
    elsif input_guess < winning_number
      @message = "Pick higher!"
    else
      @message = "You win!"
    end
    render "guess.json.jb"
  end
end
