class Author < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  validates :first_name, :last_name, length: {in: 4...20}
  validates :age, numericality: true #checks if it's a number
  has_many :posts, dependent: :destroy # Kill the author, burn the books
end
