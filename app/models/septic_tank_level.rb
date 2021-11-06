class SepticTankLevel < ApplicationRecord
  after_create :reload_page

  def reload_page; end
end
