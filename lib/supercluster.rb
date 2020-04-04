# frozen_string_literal: true

require 'mini_racer'

class Supercluster
  class Error < StandardError; end

  def initialize(*args)
    @context = MiniRacer::Context.new
    @context.load(
      File.expand_path('supercluster-build.js', __dir__)
    )
    @context.attach('args', proc { args })
    @context.eval('var supercluster = new Supercluster(...args())')
  end

  def load(*args)
    @context.attach('args', proc { args })
    @context.eval('supercluster.load(...args())')
  end

  def get_clusters(*args)
    @context.attach('args', proc { args })
    @context.eval('supercluster.getClusters(...args())')
  end

  def get_tiles(*args)
    @context.attach('args', args)
    @context.eval('supercluster.getTiles(...args())')
  end
end
