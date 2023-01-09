class Product < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :count
  end
end
