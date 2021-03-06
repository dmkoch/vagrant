require "vagrant/util/stacked_proc_runner"

module VagrantPlugins
  module Kernel_V2
    # Represents a single sub-VM in a multi-VM environment.
    class VagrantConfigSubVM
      include Vagrant::Util::StackedProcRunner

      # Returns an array of the configuration procs in [version, proc]
      # format.
      #
      # @return [Array]
      attr_reader :config_procs

      attr_reader :options

      def initialize
        @config_procs = []
        @options      = {}
      end
    end
  end
end
