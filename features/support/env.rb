$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
require 'ruby_gpg'

require 'spec/expectations'

TMP_PATH = File.dirname(__FILE__) + '/../../tmp'

Before do
  RubyGpg.config.homedir = File.dirname(__FILE__) +
                           '/../../spec/gpg_home'
end

class Object
  def true?
    !!self
  end
end
