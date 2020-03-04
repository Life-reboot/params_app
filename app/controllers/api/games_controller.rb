class Api::GamesController < ApplicationController
  def name_method
    input_name = params["query_name"]
    @output_message = input_name.upcase
    if @output_message.starts_with?("A")
      @output_message += " (hey your name starts with A)"
    end
    render "name.json.jb"
  end
end
