class Estado < ApplicationRecord
  belongs_to :pai
  has_one :cidade
end
