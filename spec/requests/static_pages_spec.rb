require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "Should have teh content 'sample app' " do
      visit '/static_pages/home'
      page.should have_content('sample app')
    end

  end
end
