class Word < ApplicationRecord
  belongs_to :category
  validates :english, presence: true

  def self.translate(word)
    "hello"
  end
end
