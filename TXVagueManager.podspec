
Pod::Spec.new do |s|
  s.name         = 'TXVagueManager'
  s.version      = '0.0.1'
  s.summary      = '一个版本更新管理器。'
  s.description  = <<-DESC
			这是一个版本更新控制器。
                   DESC
  s.homepage     = 'https://github.com/XTZPioneer/TXVagueDemo'
  s.license      = 'MIT'
  s.author       = { 'zhangxiong' => 'xtz_pioneer@163.com' }
  s.platform     = :ios
  s.source       = { :git => ':https://github.com/XTZPioneer/TXVagueDemo.git', :tag => s.version.to_s }
  s.source_files = 'TXVagueManager/**/*.{h,m}'
  s.requires_arc = true  
end