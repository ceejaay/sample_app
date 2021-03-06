require 'spec_helper'

describe "UserPages" do
  subject {page}
  
  describe "Signup page" do
   before {visit signup_path}
   it {should have_selector('h1', text: "Sign Up")}
   it {should have_selector('title', text: full_title(''))}
  end
  
  describe "Profile page" do
    let(:user) {FactoryGirl.create(:user)}
    before { visit user_path(user)}
    it {should have_selector('h1', text: user.name)}
    it {should have_selector('title', text: user.name)}
  end

  describe "Signup "do
    before {visit signup_path}

    let(:submit) {"Create My Account"}
    
    describe "With invalid information" do
      it "Should not create a user" do
        expect {click_button submit}.not_to change(User, :count)
      end
    end
    describe "With valid information" do
      before do
        fill_in "Name", with: "Example User"
        fill_in "Email", with: "user@example.com"
        fill_in "Password", with: "foobar"
        fill_in "Confirmation", with: "foobar"
      end
    it "should create a user" do
      expect { click_button submit}.to change(User, :count).by(1)
      describe "after saving the user" do
        it {should have_link("Sign out") }
      end
      end
    end
  end
end
