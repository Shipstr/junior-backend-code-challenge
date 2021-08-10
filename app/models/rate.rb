class Rate < ApplicationRecord
  validates :company_name, uniqueness: true, length: {maximum: 100}, presence: true
  attr_accessor :company_name, :flat_rate
end
