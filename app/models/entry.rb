class Entry < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50, minimum: 3 }
  validates :body, presence: true, length: { maximum: 500, minimum: 10 }
end
