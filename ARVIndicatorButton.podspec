#
# Be sure to run `pod lib lint ARVIndicatorButton.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ARVIndicatorButton"
  s.version          = "0.1.0"
  s.summary          = "UIButton subclass with indicators to show attached gesture presence ."
  s.description      = <<-DESC
                       An optional longer description of ARVIndicatorButton

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/arvindhsukumar/ARVIndicatorButton"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Arvindh Sukumar" => "arvindh.sukumar@gmail.com" }
  s.source           = { :git => "https://github.com/arvindhsukumar/ARVIndicatorButton.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/*'
  s.resource_bundles = {
    'ARVIndicatorButton' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
