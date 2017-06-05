class ToplinksController < ApplicationController

  def index
    @links = Link.find_top_links
    @top_link = @links.shift
  end

end
