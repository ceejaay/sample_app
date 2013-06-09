require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "Should have teh content 'sample app' " do
      visit '/static_pages/home'
      page.should have_content('sample app')
      page.should have_content('Blergington')
    end
  end

  describe "Help Page" do
    it "Should have the content 'help' " do
      visit '/static_pages/help'
      page.should have_content("Help")
      page.should have_content("What the what?!")
    end
  end

  describe "About page" do
    it "Should have the content 'About me'" do
      visit '/static_pages/about'
      page.should have_content("About Me")
    end
  end

end
