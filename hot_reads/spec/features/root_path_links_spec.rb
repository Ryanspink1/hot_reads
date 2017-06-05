require 'rails_helper'

describe 'visiting root path' do
  it 'shows top 10 most read links' do
    link_one   = Link.create(url:"www.espn.com", counter:10)
    link_two   = Link.create(url:"www.ham.com", counter:9)
    link_three = Link.create(url:"www.time.com", counter:1)

    visit root_path

    expect(page).to have_content(link_one.url)
    expect(page).to have_content(link_two.url)
    expect(page).to have_content(link_three.url)

  end
end
