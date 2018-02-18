require 'rails_helper'

#RSpec.feature "Welcomes", type: :feature do -> if you dant to open navigator don't use js: true
RSpec.feature "Welcomes", type: :feature, js: true do
    scenario 'show welcome message' do
     visit('/')
     expect(page).to have_content("Welcomes")
     sleep(10)
    end
end
