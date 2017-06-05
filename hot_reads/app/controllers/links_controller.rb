class LinksController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    if !Link.where(url: params[:url]).empty?
      link = Link.where(url:params[:url])[0]
      link_count = link.counter + 1
      link.update(counter: link_count)
    else
      Link.create(url: params[:url], counter: 1)
    end
  end
end
