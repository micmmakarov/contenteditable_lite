module Contenteditable
  class Content < ActiveRecord::Base
    attr_accessible :key, :value
  end
end
