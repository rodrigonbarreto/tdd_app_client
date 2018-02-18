require 'rails_helper'

RSpec.feature "Customers", type: :feature do
  scenario "check link to client" do
    visit (root_path)
    expect(page).to have_link('Clients')
  end

  scenario "check new client" do
    visit(root_path)
    click_on('Clients')
    expect(page).to have_content('Customers')
    expect(page).to have_link('New Customer')
  end
end
