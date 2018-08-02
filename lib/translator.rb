require 'yaml'
require 'pry'

def load_library(filePath)
  new_hash = { 'get_meaning' => {}, 'get_emoticon' => {}}
  yaml_file = YAML.load_file(filePath)

  yaml_file.each do |key, emoticons|
    if new_hash.has_key?(key) == false
      new_hash['get_meaning'] = {emoticons[1] => key}
      new_hash['get_emoticon'] = {emoticons[0] => emoticons[1]}
    end
  end

  new_hash
  binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
