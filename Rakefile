require "bundler/gem_tasks"

namespace :proto do
  desc "Generate log_message.pb.rb"
  task :generate do
    `protoc --beefcake_out lib/loggregator_messages -I lib/loggregator_messages lib/loggregator_messages/log_message.proto`
  end
end
