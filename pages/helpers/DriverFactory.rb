require 'watir'
require 'webdrivers'
require 'yaml'
require_relative '../../env'

class DriverFactory
  @@browser = nil

  def initialize
    unless @@browser
      case $BROWSER
      when 'chrome'
        @@browser = Watir::Browser.new :chrome
      when 'firefox'
        @@browser = Watir::Browser.new :firefox
      when 'ie'
        @@browser = Watir::Browser.new :internet_explorer
      else
        'Unsupported browser'
      end
    end
  end

  def click_when_ready(element_locator)
    @@browser.element(element_locator).wait_until_present.click
  end

  def type_when_ready(element_locator, text)
    @@browser.element(element_locator).wait_until_present.send_keys(text)
  end

  def close_browser
    @@browser.quit unless @browser.nil?
  end
end