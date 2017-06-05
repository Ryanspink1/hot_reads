class Link < ActiveRecord::Base
  validates :url, uniqueness: true

  def self.find_top_links
     where(updated_at: (Time.now - 24.hours)..Time.now).order("counter DESC").limit(10)
  end
end
