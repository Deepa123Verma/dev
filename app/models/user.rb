class User < ApplicationRecord
  enum role: [:admin, :super_admin]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_one_attached :image
         has_and_belongs_to_many :products
         has_many :posts
end
