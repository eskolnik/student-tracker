class Student < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, numericality: true

  belongs_to :cohort
  has_many :comments

  def full_name
    "#{first_name} #{last_name}"
  end
end
