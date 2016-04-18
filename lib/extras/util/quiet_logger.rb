module Util
  class QuietLogger < ActiveSupport::Logger
    
    def initialize(app)
      super
      @app = app
      quiet_assets_paths = [ %r[\A/{0,2}#{Rails.application.config.assets.prefix}] ]
      @assets_regex = /\A(#{quiet_assets_paths.join('|')})/
      # puts "assets_paths: #{quiet_assets_paths.inspect}"
    end
    # 
    # def call(env)
    #   raise Exception, "path: #{env['PATH_INFO'].inspect}"
    #   if env['PATH_INFO'] =~ @assets_regex
    #     Rails.logger.silence do
    #       
    #     end
    #   else
    #     super(env)
    #   end
    # end
    
    # def add(severity, message = nil, progname = nil, &block)
    #   # raise Exception, "msg: #{message.inspect}"
    #   if message =~ @assets_regex
    #     Rails.logger.silence do
    #       
    #     end
    #   else
    #     super
    #   end
    #   # puts "block: #{block.inspect}"
    #   # puts "name: #{progname.inspect}"
    # end
    # 
    # 
    # def log_only_errors
    #   old_level = Rails.logger.level
    #   Rails.logger.level = Logger::ERROR
    #   r = yield
    #   Rails.logger.level = old_level
    #   r
    # end
  end
end
