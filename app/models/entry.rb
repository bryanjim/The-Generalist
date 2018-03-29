class Entry < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100, minimum:10 }
  validates :body, presence: true, length: { maximum: 5000, minimum: 50 }
end
