require "my_user/version"
require "my_user/engine"

module MyUser
  extend ActiveSupport::Concern

  included do
    validates :email, presence: true, uniqueness: true
    validates :email, format: {with:
      /\A[\w.+-]{2,64}@[\w.-]{2,249}\.[a-z]{2,6}\z/i}

    add_to_bag name: :string
    add_to_bag :locale
    add_to_bag :logged_out_at
    add_to_bag :login_failed, :login_failed_cnt
    add_to_bag timezone_offset: :integer # units seconds

    before_create do |row|
      row.name ||= row.email.split("@").first || "---"
      row.timezone_offset ||= Time.now.getlocal.utc_offset
    end
  end

  def admin?
    id == 1
  end
end
