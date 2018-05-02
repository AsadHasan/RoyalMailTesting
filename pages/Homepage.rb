require_relative '../pages/helpers/driver_factory'

class Homepage < DriverFactory
  def open()
    @@browser.goto $BASE_URL
    self
  end

  def search_address
    click_when_ready(:css => '.postcode-finder')
  end
end