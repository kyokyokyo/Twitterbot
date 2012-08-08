#coding: utf-8

require 'igo-ruby'

module TwitterBot
  class Spliter
    def initialize()
      @tagger = Igo::Tagger.new(IGO_DIC_DIRECTORY)
    end

    def split(str)
      array = Array.new
      array << BEGIN_DELIMITER
      array += @tagger.wakati(str)
      array << END_DELIMITER
      array
    end
  end
end