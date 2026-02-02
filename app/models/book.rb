class Book < ApplicationRecord
    has_many :user_books, dependent: :destroy
    has_many :users, through: :user_books
    validates :title, presence: true
    validates :price, presence: true
    validates :date, presence: true
    validates :author, presence: true
end
