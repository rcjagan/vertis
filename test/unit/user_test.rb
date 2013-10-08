require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "validates user name for the upper case letter" do
    user = User.new(:name => "Abcd")
    assert user.valid?
    assert_equal("Abcd", user.name, msg="Name should start with upper case letters") 
  end
end
