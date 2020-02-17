require "open-uri"

class FlatsController < ApplicationController
  FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
  before_action :set_flats, only: [:index, :show]

  def index
    # tomorrow => @flats = Flat.all
  end

  def show
    # tomorrow => @flat = Flat.find(params[:id])
    @flat = @flats.find{|flat| flat["id"] == params[:id].to_i}
  end

  private

  def set_flats
    @flats = JSON.parse(open(FLATS_URL).read)
  end
end
