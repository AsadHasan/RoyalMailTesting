require_relative '../pages/helpers/DriverFactory'

class PostcodeFinder < DriverFactory
  def search_address
    search_field_locator = {:css => '#cp-search'}
    type_when_ready(search_field_locator, 'EC4Y 0HQ')
    type_when_ready(search_field_locator, :enter)
    self
  end

  def show_address_on_map
    click_when_ready(:css => '#map-link')
  end
end