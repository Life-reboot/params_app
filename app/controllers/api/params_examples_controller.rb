class Api::ParamsExamplesController < ApplicationController
  def query_params_action
    input_name = params["my_name"]
    input_laptop = params["my_laptop"]
    @output_message = "Hello! Your name is #{input_name} and your laptop is a #{input_laptop}."
    render "query_params.json.jb"
  end

  def segment_params_action
    @output_message = params["this_is_a_variable"]
    render "segment_params.json.jb"
  end

  def body_params_action
    input_value = params["secret_stuff"]
    @output_message = "The secret is #{input_value}..."
    render "body_params.json.jb"
  end
end
