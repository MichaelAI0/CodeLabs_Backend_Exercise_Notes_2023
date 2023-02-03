class Issue < ApplicationRecord
  validates :title, :company, :salary, presence: true
end