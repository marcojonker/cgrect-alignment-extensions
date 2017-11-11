Pod::Spec.new do |s|
  s.name         = "CGRectAlignmentExtensions"
  s.version      = "2.0.0"
  s.summary      = "Extending CGRect with Swift alignment function."
  s.description  = "Extension of CGRect providing all kinds of alignment functions like align, center, aspect fit, inset by, aspect fill and square fit"
  s.homepage     = "https://www.cacadu.eu/opensource/"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Marco" => "mj.jonker@live.nl" } 
  s.platform     = :ios, "10.0"
  s.source_files = "CGRectAlignmentExtensions/**/*.{swift}"
  s.source       = { :git => "https://github.com/marcojonker/cgrect-alignment-extensions.git", :tag => "#{s.version}" }
end
