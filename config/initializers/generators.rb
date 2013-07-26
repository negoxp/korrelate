Rails.application.config.generators do |g|
  g.test_framework :rspec, fixture: true
  g.template_engine :haml
  g.fixture_replacement  :factory_girl, dir: 'spec/factories'
end