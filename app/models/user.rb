class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments

        validates :email, presence: true
        validates :profile, presence: true
        validates :concept, presence: true
        validates :image, presence: true
end
