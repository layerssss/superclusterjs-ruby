# frozen_string_literal: true

require 'execjs'

class Supercluster
  class Error < StandardError; end

  def self.context
    @context ||=
      begin
        source = File.read(File.expand_path('supercluster-build.js', __dir__))
        ExecJS.compile(source)
      end
  end

  def self.call_supercluster(method, *args)
    context.call('callSupercluster', method, *args)
  end

  def self.get_clusters(*args)
    call_supercluster('getClusters', *args)
  end

  def self.get_tiles(*args)
    call_supercluster('getTiles', *args)
  end
end
