class Link < ActiveRecord::Base

  def self.find_top_links
     where(updated_at: (Time.now - 24.hours)..Time.now).order("counter").limit(10).reverse
  end
end
