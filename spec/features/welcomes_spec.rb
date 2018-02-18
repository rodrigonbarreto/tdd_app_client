require 'rails_helper'

#RSpec.feature "Welcomes", type: :feature do -> if you dant to open navigator don't use js: true
RSpec.feature "Welcomes", type: :feature, js: true do
  scenario 'show welcome message' do
   visit(root_path)
   expect(page).to have_content("Welcomes")
   sleep(3)
  end
  scenario 'check client link' do
    visit(root_path)

    expect(page).to have_selector('ul li')
    expect(find('ul li')).to have_link('Clients')
    sleep(3)
  end
end
