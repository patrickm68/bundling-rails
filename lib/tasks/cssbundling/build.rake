namespace :css do
  desc "Build your CSS bundle"
  task :build do
    system "yarn install && yarn build:css"
  end
end

Rake::Task["assets:precompile"].enhance(["css:build"])
Rake::Task["test:prepare"].enhance(["css:build"])
