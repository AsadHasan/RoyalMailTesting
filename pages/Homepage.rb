require_relative '../pages/helpers/driver_factory'

class Homepage < DriverFactory
  def open()
    @browser.goto URL
    self
  end

  def search_address
    click_when_ready(:xpath => "//*[text()='Find a postcode/address']")
  end
end