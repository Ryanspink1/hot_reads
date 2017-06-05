class ToplinksController < ApplicationController

  def index
    @links = Link.find_top_links
  end

end
