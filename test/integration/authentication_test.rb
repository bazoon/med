require 'test_helper'

class AuthenticationTest < ActionDispatch::IntegrationTest
  fixtures :all

  # test "the truth" do
  #   assert true
  # end  
 
 test "loggin" do
   visit root_path

   click_link "Sign up"
   fill_in I18n.t(:login), :with => "down_joe"
#   select "Free account"
#   click_button "Register"
 end


end
