class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  has_many :expenses, foreign_key: :author_id
  has_many :categories, through: :expenses
end
