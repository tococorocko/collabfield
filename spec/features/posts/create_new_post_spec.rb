require "rails_helper"

RSpec.feature "create new post", :type => :feature do
  let(:user) { create(:user) }
  let(:post) { create(:post) }
  let(:category) { create(:category, branch: 'hobby', name: 'arts') }
  let(:post) do
    create(:post,
            title: 'a very fun post',
            category_id: category.id)
  end

  scenario "User goes to a single post from the home page", js: true do
    post
    visit new_post_path
    page.find(".single-post-card").click
    expect(page).to have_selector('body .modal')
    page.find('.interested a').click
    expect(page).to have_selector('#single-post-content p', text: post.content)
  end

end
