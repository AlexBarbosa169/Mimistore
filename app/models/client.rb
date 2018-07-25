class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :pedidos  
  has_one :adress

  accepts_nested_attributes_for :adress
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
