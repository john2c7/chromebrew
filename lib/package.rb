require './lib/package_helpers'

class Package
  property :version, :binary_url, :binary_sha1, :source_url, :is_fake
  
  class << self
    attr_reader :dependencies, :is_fake
  end
  def self.depends_on (dependency = nil)
    @dependencies = [] unless @dependencies
    if dependency
      @dependencies << dependency
    end
    @dependencies
  end
  
  def self.is_fake
    
  end
end
