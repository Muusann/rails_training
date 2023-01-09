class User < ApplicationRecord
  with_options presence: true do
    validetes :user
    validetes :type_id
  end
end
