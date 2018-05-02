require_relative '../helpers/driver_factory'
require_relative '../../pages/Homepage'

class Site < DriverFactory
  def homepage
    @homepage = Homepage.new
  end
end