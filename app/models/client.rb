class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :pedidos  
  has_one :adress
  has_many :contacts

  accepts_nested_attributes_for :contacts, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :adress

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
