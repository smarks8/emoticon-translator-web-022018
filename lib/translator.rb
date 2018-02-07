require 'yaml'

def load_library(file_path)
  library = {"get_emoticon" => {}, "get_meaning" => {}}
  YAML.load_file(file_path).each do |emotion, array|
    english_emoticon = array[0] 
    japanese_emoticon = array[1]
  
  library["get_meaning"][japanese_emoticon] = emotion
  library["get_emoticon"][english_emoticon] = japanese_emoticon
  end 
  library
end

def get_japanese_emoticon(file_path, emoti)
  # code goes here
end

def get_english_meaning
  # code goes here
end