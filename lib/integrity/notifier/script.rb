require "integrity"

module Integrity
  class Notifier
    class Script < Notifier::Base
      attr_reader :script_path, :extra_args

      def self.to_haml
        File.read(File.dirname(__FILE__) + "/config.haml")
      end

      def initialize(commit, config={})
        @script_path  = config.delete("script_path") || '/bin/echo'
        @extra_args   = config.delete("extra_args") || ''
        super(commit, config)
      end

      def deliver!
        `#{script_path} #{commit.successful? ? "pass" : "fail"} #{extra_args}`
      end
    end

    register Script
  end
end
