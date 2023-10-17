class Category < ApplicationRecord
  has_many :category_expenses
  has_many :expenses, through: :category_expenses

  validates :name, presence: true, uniqueness: true
  validates :icon, presence: true

  def total_amount
    self.expenses.eager_load(:category_expenses).sum(:amount)
  end
end
