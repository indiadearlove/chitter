require './spec/spec_helper'
require './app/server'

context "User signs up" do

  it "should be able to sign up" do
    visit '/'
    expect(page).to have_content("Welcome to Chitter!")
    fill_in :email, :with => "test@test.com"
    fill_in :password, :with => "1234"
    fill_in :password_confirmation, :with => "1234"
    click_button "Sign up"
  end

end
