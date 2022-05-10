class Blog < ApplicationRecord
  has_rich_text :body
  has_many :comments

  is_impressionable counter_cache: true

  scope :arrange_blogs, -> { order('impressions_count desc') }
end
