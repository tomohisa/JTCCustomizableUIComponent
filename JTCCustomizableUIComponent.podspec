Pod::Spec.new do |s|
  s.name         = "JTCCustomizableUIComponent"
  s.version      = "0.1.0"
  s.summary      = "UIView Component that can customize Layer Properties at Storyboard."
  s.homepage     = "https://github.com/tomohisa/JTCCustomizableUIComponent"
  s.screenshots  = "https://dl.dropbox.com/u/1157820/JTCCustomizableViewComponent/result1.png"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Tomohisa Takaoka" => "tomohisa.takaoka@gmail.com" }
  s.platform     = :ios, '5.0'
  s.source       = { :git => "https://github.com/tomohisa/JTCCustomizableUIComponent.git", :commit => "f4b7bbab3fccc98bca607ec08f6e9dc88bf372da" }
  s.source_files = 'JTCCustomizableUIComponent/**/*.{h,m}'
  s.framework    = 'QuartzCore'
  s.requires_arc = true
end
