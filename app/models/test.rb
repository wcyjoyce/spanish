class Test < ApplicationRecord
  has_many :attempts, dependent: :destroy
  belongs_to :category
end
