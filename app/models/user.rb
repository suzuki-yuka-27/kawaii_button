class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, length: { maximum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :profile, length: { maximum: 300 }, allow_blank: true
end
