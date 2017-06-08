class Post < ApplicationRecord
  belongs_to :localizacao
  belongs_to :pet
  belongs_to :usuario
end
