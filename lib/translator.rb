require 'yaml'
require 'pry'

def load_library(filePath)
  new_hash = {}
  yaml_file = YAML.load_file(filePath)

  yaml_file.each do |key, symbols|
    binding.pry
  end#end of yaml_file.each

  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
