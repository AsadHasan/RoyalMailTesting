require_relative '../pages/helpers/DriverFactory'

class PostcodeFinder < DriverFactory
  def search_address
    type_when_ready({:css => '#cp-search'}, 'EC4Y 0HQ')
  end
end