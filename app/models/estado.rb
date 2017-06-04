class Estado < ApplicationRecord
  belongs_to :pais
  has_one :cidade
end
