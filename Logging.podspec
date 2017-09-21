Pod::Spec.new do |s|
  s.name             = "Coordinator"
  s.version          = "1.0.1"
  s.summary          = "Coordinator swift based framework"
  s.description      = <<-DESC
                       The Coordinator is a swift based framework which makes easer to implement one of the widely adopted architecture patterns. It provides a default implementation of all main entities and creates clear connections between them.
                       DESC
  s.homepage         = "https://github.com/martinbanas/coordinator"
  s.license          = 'MIT'
  s.author           = 'Coordinator Contributors'
  s.source           = { :git => "https://github.com/martinbanas/coordinator.git", :tag => s.version.to_s }

  s.source_files = 'Sources/**/*.{swift,h}'
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'
  s.requires_arc = true
end