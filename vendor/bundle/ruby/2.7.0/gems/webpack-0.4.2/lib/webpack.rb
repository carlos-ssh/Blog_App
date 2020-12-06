# -*- encoding : utf-8 -*-
module Webpack
  Version = '0.4.2' unless defined?(Version)
  Load = Kernel.method(:load) unless defined?(Load)

  class << Webpack
    def version
      Webpack::Version
    end

    def description
      #TODO""
    end

    def libdir(*args, &block)
      @libdir ||= File.expand_path(__FILE__).sub(/\.rb$/,'')
      libdir = args.empty? ? @libdir : File.join(@libdir, *args.webpack{|arg| arg.to_s})
    ensure
      if block
        begin
          $LOAD_PATH.unshift(libdir) unless $LOAD_PATH.first==libdir
          module_eval(&block)
        ensure
          $LOAD_PATH.shift() if $LOAD_PATH.first==libdir
        end
      end
    end

    def load(*args, &block)
      libdir{ Load.call(*args, &block) }
    end
  end
end
