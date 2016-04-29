class Nicho < ActiveRecord::Base
  belongs_to :categoria
  has_many :categoria
end
