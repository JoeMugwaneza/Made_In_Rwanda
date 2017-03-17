class Role < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :user_category, optional: true
end
