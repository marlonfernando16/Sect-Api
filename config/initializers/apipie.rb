Apipie.configure do |config|
  config.app_name                = "SectRestApi"
  config.api_base_url            = "/api/v1"
  config.doc_base_url            = ""
  # where is your API defined?
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/**/*.rb"
end
