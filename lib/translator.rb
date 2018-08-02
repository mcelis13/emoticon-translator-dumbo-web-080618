require 'yaml'
require 'pry'

def load_library(filePath)
  new_hash = { 'get_meaning' => {}, 'get_emoticon' => {}}
  yaml_file = YAML.load_file(filePath)

  yaml_file.each do |key, emoticons|
      emoticons.each do |english_emoticon, japanese_emoticon|
        if new_hash['get_meaning'].has_key?(emoticons[1]) == false
          new_hash['get_meaning'][emoticons[1]] = key
          new_hash['get_emoticon'][emoticons[0]] = emoticons[1]
        end# end of if new_hash
      end#end of emoticons.each
  end#end of yaml_file

  new_hash
end

def get_japanese_emoticon(filePath, japanese_emoticon)
  load_library(filePath)
  if load_library(filePath)['get_emoticon'][japanese_emoticon]
    return load_library(filePath)['get_emoticon'][japanese_emoticon]
  else
    load_library(filePath)
    return 'Sorry, that emoticon was not found'
  end

end

def get_english_meaning
  # code goes here
end
