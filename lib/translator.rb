require 'yaml'
YAML.load('emoticons.yml')
require 'pry'

def load_library(filePath)
  new_hash = {}
  YAML.load_file(filePath)
  binding.pry
  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
