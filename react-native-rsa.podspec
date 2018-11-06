
Pod::Spec.new do |s|
  s.name         = 'react-native-rsa'
  s.version      = '0.1.0'
  s.summary      = 'RSA加密'
  s.author       = 'admin@ofan.cn'

  s.homepage     = 'https://github.com/ofancn/react-native-rsa'

  s.license      = 'MIT'
  s.platform     = :ios, '7.0'

  s.source       = { :git => 'https://github.com/ofancn/react-native-rsa.git', :tag => '#{s.version}' }

  s.source_files  = 'ios/*.{h,m}'
  s.dependency 'React'
end
