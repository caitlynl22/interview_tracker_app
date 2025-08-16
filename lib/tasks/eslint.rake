# frozen_string_literal: true

desc "Run ESLint"
task :eslint do
  sh "npm run lint:js"
end

namespace :eslint do
  desc "Autocorrect ESLint offenses"
  task :autocorrect do
    sh "npm run fix:js"
  end
end
