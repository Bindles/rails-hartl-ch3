require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  test "name should not be too long" do
    @user.name = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    assert_not @user.valid?   
  end


  # test "email addresses should be unique" do
  # #duplicate_user = @user.dup
  # @user.save
  # assert_not dupl
  # end
end