class Api::V1::ToplinksController < ApplicationController

  def index
    render json: Link.find_top_links
  end

end
