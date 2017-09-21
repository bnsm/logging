Pod::Spec.new do |s|
  s.name             = "Logging"
  s.version          = "3.0.0"
  s.summary          = "A standard interface for message logging."
  s.description      = <<-DESC
                       Working on various projects and frameworks you may need to use a separation betwen logic that generates messages and the logic that reports them. Logging provides a standard interface which could be easily extended or subclassed by any already existing logger.
                       DESC
  s.homepage         = "https://github.com/martinbanas/logging"
  s.license          = 'MIT'
  s.author           = 'Logging Contributors'
  s.source           = { :git => "https://github.com/martinbanas/logging.git", :branch => "feature/swift3" }

  s.source_files = 'Sources/**/*.{swift,h}'
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.osx.deployment_target = '10.10'
  s.requires_arc = true
end