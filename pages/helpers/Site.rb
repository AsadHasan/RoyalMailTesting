require_relative '../helpers/DriverHelper'
require_relative '../../pages/Homepage'
require_relative '../../pages/PostcodeFinder'

class Site < DriverHelper
  def homepage
    @homepage = Homepage.new
  end

  def postcode_finder
    @postcode_finder = PostcodeFinder.new
  end
end