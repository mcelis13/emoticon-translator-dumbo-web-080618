require 'yaml'
require 'pry'

def load_library(filePath)
  new_hash = { get_meaning => {}, get_emotion => {}}
  yaml_file = YAML.load_file(filePath)

  
  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
