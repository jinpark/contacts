class Contact < ActiveRecord::Base
  belongs_to :user
  has_one :favorite, :dependent => :destroy

  attr_accessible :address, :email, :name, :phone_number, :user_id

  validates :address, :email, :name, :phone_number, :presence => true
  validates :address, :email, :name,
    :phone_number, :length => {:maximum => 255}
end
