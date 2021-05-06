class ParamsExamplesController < ApplicationController
  def query_params
    my_message = params[:my_message]
    render json: {message: "The message is #{my_message}"}
  end
end
