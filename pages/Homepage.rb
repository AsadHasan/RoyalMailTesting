require_relative '../pages/helpers/DriverFactory'
require_relative '../pages/PostcodeFinder'

class Homepage < DriverFactory
  def open
    @@browser.goto $BASE_URL
    self
  end

  def goto_search
    click_when_ready(:css => '.postcode-finder')
    PostcodeFinder.new
  end
end