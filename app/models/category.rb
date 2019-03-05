class Category < ApplicationRecord
  has_many :tests, dependent: :destroy
  has_many :words, dependent: :destroy
  accepts_nested_attributes_for :words

  validates :name, :subclass, presence: true
  validates :subclass, inclusion: { in: ["Noun", "Verb", "Subjective", "Numbers"] }

  # TODO:
  # 1) category = noun/adjective - test: normal English translation
  # 2) category = verb - test: translate in singular/plural
  # 3) category = numbers - test: Math.random and spell it out
end
