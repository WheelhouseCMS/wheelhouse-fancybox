Gem::Specification.new do |s|
  s.name        = "wheelhouse-fancybox"
  s.platform    = Gem::Platform::RUBY
  s.version     = "0.1"

  s.required_ruby_version     = ">= 1.8.7"
  s.required_rubygems_version = ">= 1.3.6"
  
  s.summary     = "Fancybox support for Wheelhouse CMS."
  s.description = "Fancybox (fancybox.net) packaged for use in Wheelhouse CMS themes."
  s.author      = "Sam Pohlenz"
  s.email       = "sam@sampohlenz.com"
  s.homepage    = "http://www.wheelhousecms.com"
  
  s.files        = Dir.glob("{app,lib,vendor}/**/*")
  s.require_path = "lib"
  
  s.add_dependency("wheelhouse", "~> 0.10.3")
end
