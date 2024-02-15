require "test_helper"

describe User do
  let(:admin) { User.find_or_create_by email: "admin@sample.com" }
  let(:user) { User.find_or_create_by email: "user@sample.com" }

  test "valid users" do
    assert_instance_of User, admin
    assert_instance_of User, user

    assert user.valid?
    assert admin.valid?
  end

  test "email is invalid" do
    user = User.find_or_create_by email: ""

    refute user.valid?
  end

  test "attributes" do
    assert user.respond_to?(:email)
    assert user.respond_to?(:locale)
    assert user.respond_to?(:logged_out_at)
    assert user.respond_to?(:login_failed)
    assert user.respond_to?(:login_failed_cnt)
    assert user.respond_to?(:timezone_offset)
  end

  test "validates some attributes" do
    assert user.name.is_a?(String)
    assert user.timezone_offset.is_a?(Integer)
    assert_equal "user", user.name
    assert_equal Time.now.getlocal.utc_offset, user.timezone_offset
  end

  test "admin?" do
    user = User.find_or_create_by email: "admin@sample.com"

    assert user.admin?
  end

  test "not admin?" do
    # ordering!: first admin then user
    assert admin.admin?
    refute user.admin?
  end
end
