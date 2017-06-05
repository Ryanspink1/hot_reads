require 'rails_helper'

describe 'top links endpoint' do
  it 'returns a list of top 10 most read links within the past 24 hours' do
    first_link = Link.create(url:"www.google.com", counter: 11)
    last_link  = Link.create(url:"www.earth.com", counter: 2)

    old_link = Link.create(url:"www.desk.com", counter: 22, updated_at: Time.now - 36.hours)

    Link.create(url:"www.facebook.com", counter: 9)
    Link.create(url:"www.helmet.com", counter: 8)
    Link.create(url:"www.abalone.com", counter: 7)
    Link.create(url:"www.alabaster.com", counter: 6)
    Link.create(url:"www.jabrony.com", counter: 6)
    Link.create(url:"www.jikama.com", counter: 5)
    Link.create(url:"www.mars.com", counter: 4)
    Link.create(url:"www.pluto.com", counter: 3)
    Link.create(url:"www.venus.com", counter: 1)

    get "/api/v1/toplinks"

    top_links = JSON.parse(response.body)

    expect(top_links.count).to eq(10)

    expect(top_links.first[:url]).to eq(first_link.url)
    expect(top_links.first[:url]).to_not eq("www.espn.com")

    expect(top_links.last[:url]).to eq(last_link.url)
    expect(top_links.last[:url]).to_not eq("www.espn.com")

    expect(top_links.include?("www.desk.com")).to eq(false)

  end
end
