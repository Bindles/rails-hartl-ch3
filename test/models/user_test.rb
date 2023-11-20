require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.create(name: "Example User", email: "user@example.com", 
    password: "foobar", password_confirmation: "foobar")
  end
  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end
  test "password should have a minimum length" do
  @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end

  # test "email addresses should be unique" do
  # #duplicate_user = @user.dup
  # @user.save
  # assert_not dupl
  # end
end