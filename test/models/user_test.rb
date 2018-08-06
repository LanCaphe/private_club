require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(firstname: "Jean", lastname "Aimarre", email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end
  test "firstname should be present" do
    @user.firstname = ""
    assert_not @user.valid?
  end
  

 test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end

end
