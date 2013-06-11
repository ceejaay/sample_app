# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'spec_helper'

describe User do
  before{@user = User.new(name: "Example Name", email: "user@email.com")}
  subject { @user }
  
  it {should respond_to(:name)}
  it {should respond_to(:email)}

  it {should be_valid}

  describe "when name is not present" do
    before {@user.name = " "}
    it {should_not be_valid}
  end
  
  describe "When e-mail is not present" do
    before{ @user.email = " "}
    it {should_not be_valid}
  end

  describe "When name is too long" do
    before {@user.name = "A" * 51 }
    it {should_not be_valid}
  end

#redo the email validations. there was a problem with the vim file.  
end
