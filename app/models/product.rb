class Product < ApplicationRecord
  extend Enumerize

  before_save :calculate_value

  enumerize :state, in: [:BODEGA, :DESPACHADO]

  def calculate_value
    if unit_value.present?
      self.iva_value = (unit_value * 1.19)
      self.total = (iva_value * quantity)
    end
  end
end
