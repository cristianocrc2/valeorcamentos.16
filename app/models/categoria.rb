class Categoria < ActiveRecord::Base
  belongs_to :nicho
  has_many :subcategoria
end
