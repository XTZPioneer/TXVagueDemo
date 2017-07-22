
Pod::Spec.new do |s|
  s.name         = 'TXVagueManager'
  s.version      = '0.0.3'
  s.summary      = '一句代码让你的APP具备和支付宝一样的后台模糊效果。'
  s.description  = <<-DESC
			模糊效果。
                   DESC
  s.homepage     = 'https://github.com/XTZPioneer/TXVagueDemo'
  s.license      = 'MIT'
  s.author       = { 'zhangxiong' => 'xtz_pioneer@163.com' }
  s.platform     = :ios
    s.source     = { :git => 'https://github.com/XTZPioneer/TXVagueDemo.git', :tag => s.version.to_s }
  s.source_files = 'TXVagueManager/**/*.{h,m}'
  s.requires_arc = true  
end
