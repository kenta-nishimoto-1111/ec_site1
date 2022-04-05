class Book < ApplicationRecord
    has_many :taggings
    has_many :tags,through: :taggings

    enum status: {salling: 1, sold_out: 2}

end
