class User < ApplicationRecord

  enum user_type: [:customer, :trainer]

  has_secure_password


  validates :email, presence: true, uniqueness: true

end
