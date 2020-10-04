require 'simplecov'

SimpleCov.start 'rails' do
  add_filter do |source_file|
    source_file.lines.count < 10
  end
  add_group "Models", "app/models"
  add_group "Controllers", "app/controllers"
end
