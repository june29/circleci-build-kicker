require 'circleci'

CircleCi.configure do |config|
  config.token = ENV['CIRCLECI_TOKEN']
end

CircleCi::Project.build_branch(
  ENV['GITHUB_USER'],
  ENV['GITHUB_REPO'],
  ENV['BRANCH'],
  { ENV['SPECIAL_ENV'] => true },
)
