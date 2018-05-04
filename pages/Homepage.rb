require_relative '../pages/helpers/DriverHelper'
require_relative '../pages/PostcodeFinder'

class Homepage < DriverHelper
  def open
    @@browser.goto $BASE_URL
    self
  end

  def goto_search
    click_when_ready(:css => '.postcode-finder')
    PostcodeFinder.new
  end
end