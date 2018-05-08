require_relative '../pages/helpers/DriverHelper'

class PostcodeFinder < DriverHelper
  def search_address(postcode)
    type_when_ready({:css => '#cp-search'}, postcode)
    self
  end

  def search_results?
    present?(:css => '#cp-search_results')
  end

  def address_on_map?
    click_when_ready(:css => '#cp-search_results')
    click_when_ready(:css => '#map-link')
    present?(:css => '#postcodefinder-map')
  end
end