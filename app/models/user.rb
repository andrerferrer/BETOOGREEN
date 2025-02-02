class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products
  has_many :purchases
  has_many :reviews
  has_many :listings, through: :products

  def short_email
    self.email.split('@')[0].capitalize
  end

end
