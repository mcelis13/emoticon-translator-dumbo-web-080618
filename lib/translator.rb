require 'yaml'
require 'pry'

def load_library(filePath)
  new_hash = { 'get_meaning' => {}, 'get_emoticon' => {}}
  yaml_file = YAML.load_file(filePath)

  yaml_file.each do |key, emoticons|
    new_hash['get_meaning'] = {emoticons[1] => key}
    binding.pry
  end

  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
