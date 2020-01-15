class User < ApplicationRecord

  belongs_to :client_plan, class_name: 'Plan', foreign_key: 'client_id', optional: true
  has_many :trainer_plans, class_name: 'Plan', foreign_key: 'trainer_id'


  enum user_type: [:client, :trainer]

  has_secure_password


  validates :email, presence: true, uniqueness: true

  # Tell geocoder where to look get the human-readable address string
  #Which 
  geocoded_by :address

  #Tell geocoder to actually turn the above address into a latitude
  # and longtitiude ( by doing a lookup in a remote API)
  # any time you create or update a User item

  after_validation :geocode

end
