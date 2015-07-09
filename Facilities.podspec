Pod::Spec.new do |s|
    s.name     = 'Facilities'
    s.version  = '1.0.0'
    s.license  = 'MIT'
    s.summary  = "Several facilities for Swift."
    s.homepage = ''
    s.authors  = { }
    s.source   = { :git => 'https://github.com/ttrznadel/Facilities.git'}
    s.source_files = 'Facilities/*.swift'

    s.ios.deployment_target = '8.0'
    s.osx.deployment_target = '10.9'
end