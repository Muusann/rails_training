class Product < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :type_id
  end
end
