class SpreeP24::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def add_config
    template "spree_p24.rb", "config/initializers/spree_p24.rb"
  end

end
