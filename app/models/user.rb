class User < ApplicationRecord

  has_many :client_plans, class_name: 'Plan', foreign_key: 'client_id'
  has_many :trainer_plans, class_name: 'Plan', foreign_key: 'trainer_id'


  enum user_type: [:client, :trainer]

  has_secure_password


  validates :email, presence: true, uniqueness: true

end
