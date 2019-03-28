Pod::Spec.new do |s|
  s.name                = "SKPhotoBrowser"
  s.version             = "6.0.2"
  s.summary             = "Simple PhotoBrowser/Viewer iwritten by pure swift. inspired by facebook, twitter photo browsers."
  s.homepage            = "https://github.com/GTramp/SKPhotoBrowser"
  s.license             = { :type => "MIT", :file => "LICENSE" }
  s.author              = { "tramp" => "wanggang3@staff.sina.com.cn" }
  s.source              = { :git => "https://github.com/GTramp/SKPhotoBrowser.git", :tag => s.version }
  s.platform            = :ios, "11.0"
  s.source_files        = "SKPhotoBrowser/**/*.{h,swift}"
  s.resources           = "SKPhotoBrowser/SKPhotoBrowser.bundle"
  s.requires_arc        = true
  s.frameworks          = "UIKit"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
end
