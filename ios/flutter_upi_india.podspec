#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_upi_india.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_upi_india'
  s.version          = '1.0.0'
  s.summary          = 'Flutter plugin for UPI payments.'
  s.description      = <<-DESC
A flutter plugin to launch UPI payment applications on Android and iOS towards making UPI payments.
                       DESC
  s.homepage         = 'https://github.com/princeflutterdev/flutter_upi_pay'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Prince Negi' => 'princeflutterdev@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
