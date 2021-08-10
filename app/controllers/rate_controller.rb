class RateController < ApplicationController
  def index
    render json: Rate.all.as_json
  end
end
