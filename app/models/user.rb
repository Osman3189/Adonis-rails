class User < ApplicationRecord

  belongs_to :client_plan, class_name: 'Plan', foreign_key: 'client_id', optional: true
  has_many :trainer_plans, class_name: 'Plan', foreign_key: 'trainer_id'


  enum user_type: [:client, :trainer]

  has_secure_password


  validates :email, presence: true, uniqueness: true

end
