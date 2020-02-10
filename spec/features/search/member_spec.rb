require 'rails_helper'

describe 'Member Search' do
  it 'can display a list of members for a house when selecting a house' do
    visit root_path

    expect(current_path).to eq(root_path)

    select 'Gryffindor', from: :house
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)

    expect(page).to have_content('Number of members: 41')
    expect(page).to have_css("table#members-Gryffindor tr", count: 41)
  end
end
