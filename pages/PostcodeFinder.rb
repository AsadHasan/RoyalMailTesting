require_relative '../pages/helpers/DriverHelper'

class PostcodeFinder < DriverHelper
  def search_address
    search_field_locator = {:css => '#cp-search'}
    type_when_ready(search_field_locator, 'EC4Y 0HQ')
    type_when_ready(search_field_locator, :enter)
    self
  end

  def address_on_map?
    click_when_ready(:css => '#map-link')
    present?(:css => '#postcodefinder-map')
  end
end