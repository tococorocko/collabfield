require 'rails_helper'

RSpec.describe NavigationHelper, type: :helper do
  context "User signed in" do
    before(:each) { helper.stub(:user_signed_in?).and_return(true) }

    it "returns signed_in_links partial's path" do
      expect(helper.collapsible_links_partial_path).to (
        eq 'layouts/navigation/collapsible_elements/signed_in_links'
      )
    end
  end

  context "User not signed in" do
    before(:each) { helper.stub(:user_signed_in?).and_return(false) }

    it "returns non_signed_in_links partial's path" do
      expect(helper.collapsible_links_partial_path).to (
        eq 'layouts/navigation/collapsible_elements/non_signed_in_links'
      )
    end
  end
end
