#
# Be sure to run `pod lib lint NEKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NEKit'
  s.version          = '0.14.0'
  s.summary          = 'A toolkit for Network Extension Framework.'

  s.swift_version    = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A toolkit for Network Extension Framework.

The main goal of NEKit is to provide things needed in building a Network Extension app with NETunnelProvider to bypass network filtering and censorship while keep the framework as non-opinionated as possible.
                       DESC

  s.homepage         = 'https://zhuhaow.github.io/NEKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'BSD', :file => 'LICENSE.md' }
  s.authors          = { 'zhuhaow' => 'mail@mail.com' }
  s.source           = { :git => 'https://github.com/zhuhaow/NEKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  # s.platform = :osx
  s.osx.deployment_target = "10.10"
  s.ios.deployment_target = "11.0"

  s.source_files = 'src/*/*'

  # s.resource_bundles = {
  #   'NEKit' => ['NEKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Foundation', 'NetworkExtension'
  #s.osx.frameworks = 'Cocoa'
  #s.ios.frameworks = 'UIKit'

  s.dependency 'CocoaAsyncSocket'
  s.dependency 'CocoaLumberjack/Swift'
  s.dependency 'MMDB-Swift'
  s.dependency 'Sodium'
  s.dependency 'Yaml'
end
