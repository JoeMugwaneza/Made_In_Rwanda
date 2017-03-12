class Role < ApplicationRecord
  belongs_to :user
  belongs_to :user_category
end
