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

def get_japanese_emoticon(file_path, english_emoticon)
  library = load_library(file_path)
  potential_emoticon = library["get_emoticon"][english_emoticon]
  if potential_emoticon
    potential_emoticon
  else 
    "Sorry, that emoticon was not found"
  end 
end

def get_english_meaning(file_path, japanese_emoticon)
  library = load_library(file_path)
  potential_meaning = library["get_meaning"][japanese_emoticon]
  if potential_meaning
    potential_meaning
  else 
    "Sorry, that emoticon was not found"
  end 
end