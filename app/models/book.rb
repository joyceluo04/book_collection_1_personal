class Book < ApplicationRecord
    validates :title, presence: true
    validates :price, presence: true
    validates :date, presence: true
    validates :author, presence: true
end
