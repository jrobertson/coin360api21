Gem::Specification.new do |s|
  s.name = 'coin360api21'
  s.version = '0.2.0'
  s.summary = 'Uses the Coin360 API; unofficial gem. #cryptocurrency'
  s.authors = ['James Robertson']
  s.files = Dir['lib/coin360api21.rb']
  s.add_runtime_dependency('excon', '~> 0.81', '>=0.81.0')  
  s.add_runtime_dependency('unichron', '~> 0.3', '>=0.3.7')  
  s.signing_key = '../privatekeys/coin360api21.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/coin360api21'
end
