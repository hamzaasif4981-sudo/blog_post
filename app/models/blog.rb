class Blog < ApplicationRecord
  has_rich_text :body
  has_many :comments
  is_impressionable
end
