require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "Home page" do

    before {visit root_path}

#it, refers to the subject of the page. Which is invoked on line 4.
    it { should have_selector('h1', text: "Sample App") }
    it { should have_selector('title', text: full_title(''))}

  end

  describe "Help Page" do

    before {visit help_path}

    it {should have_content("Help")} 
    it {should have_selector('title', text: full_title(''))}

  end

  describe "About page" do
    before {visit about_path}
    
    it {should have_content("About Me")}
    it {should have_selector("h1", text: "About Me")}
    it {should have_selector("title", text: full_title(''))}
  end
  
  describe "Contact page" do
    before { visit contact_path}

    it {should have_selector("h1", text: "Contact Me")}
    it {should have_selector("title", text: full_title(''))}
  end
end
