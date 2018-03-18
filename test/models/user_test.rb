require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Bobby Drugs", email: "kaskin@staff.eslgaming.com", password: "random", password_confirmation: "random")
  end

  test "valid name" do
    @user.name = "     "
    assert_not @user.valid?
  end

  test "valid email" do
    @user.email = " "
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 246 + "@gmail.com"
    assert_not @user.valid?
  end

  test "accept valid emails" do
    valid_addresses = %w[a@gmail.com B@gmail.com B@abv.bg somemore@abv.bg]

    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "reject invalid emails" do
    invalid_addresses = %w[a@gma,com B.com a@a+b+v.bg somemore@abv,bg]

    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "duplicate user emails" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "emails should be saved in lowercase" do
    testMail = "ALeXLaSkIn@GmAiL.CoM"
    @user.email = testMail
    @user.save
    assert_equal testMail.downcase, @user.reload.email
  end

  test "valid password length" do
    @user.password = @user.password_confirmation = " "*6
    assert_not @user.valid?
  end

  test "password should have min length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end


    test "authenticated? should return false for a user with nil digest" do
      assert_not @user.authenticated?(:remember, '')
    end
end
