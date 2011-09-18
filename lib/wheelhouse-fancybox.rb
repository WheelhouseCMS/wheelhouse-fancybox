require 'wheelhouse'

module Fancybox
  class Plugin < Wheelhouse::Plugin
    initializer "precompile assets" do |app|
      app.config.assets.precompile << "fancybox/*"
    end
  end
end
