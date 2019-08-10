require "rails_helper"

RSpec.feature "Logout", :type => :feature do
  let(:user) { create(:user) } # factory_bot method

  # before(:each) { allow(helper). }

  scenario 'user successfully logs out', js: true do
    sign_in user # Devise Helper Method
    visit root_path
    find("nav #user-settings").click
    find('nav a', text: 'Log out').click
    # expect(page).to have_selector('.notice', text: 'Signed out successfully.')
    expect(page).to have_selector('nav a', text: 'Login')
    visit root_path
  end

end
