class Cidade < ApplicationRecord
  belongs_to :estado
  has_one :pais
end
