#
# Be sure to run `pod lib lint WSBouncingTableView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WSBouncingTableView'
  s.version          = '0.1.0'
  s.summary          = 'A custom UITableView with bouncing properties to achieve ripples effects.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A custom UITableView with bouncing properties to achieve ripples effects, when user scroll the tableView, the dragged cells will have certain delay and animate back to its original position.
                       DESC

  s.homepage         = 'https://github.com/ted7726/WSBouncingTableView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'WeiSheng Su' => 'ted7726@gmail.com' }
  s.source           = { :git => 'https://github.com/ted7726/WSBouncingTableView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'WSBouncingTableView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'WSBouncingTableView' => ['WSBouncingTableView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
