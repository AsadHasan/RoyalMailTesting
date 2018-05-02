require 'watir'
require 'webdrivers'
require 'yaml'
require_relative '../../env'

class DriverFactory
  CONF = YAML.load_file(ROOT_DIR + '/config.yaml')
  BROWSER = CONF['browser']
  URL = CONF['base_url']

  def initialize()
    unless @browser
      case BROWSER
      when 'chrome'
        @browser = Watir::Browser.new :chrome
      when 'firefox'
        @browser = Watir::Browser.new :firefox
      when 'ie'
        @browser = Watir::Browser.new :internet_explorer
      else
        'Unsupported browser'
      end
    end
  end

  def click_when_ready(element_locator)
    Watir::Wait.until {@browser.element(element_locator).visible?}
    @browser.element(element_locator).click
  end

  def close_browser
    @browser.quit unless @browser.nil?
  end
end