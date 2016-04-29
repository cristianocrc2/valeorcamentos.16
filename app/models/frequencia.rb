class Frequencia < ActiveRecord::Base
  belongs_to :subcategoria
  has_many :previsaos
end
