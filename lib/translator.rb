require "yaml"
file_path = './lib/emoticons.yml'
japanese_translation = load_library(file_path)[:get_emoticon][emoticon]
english_translation = load_library(file_path)[:get_meaning][emoticon]
result = translation ? translation : "Sorry, that emoticon was not found"

def load_library(file_path)
  emoticon_data = YAML.load_file(file_path)
  new_hash = {
    get_meaning: {},
    get_emoticon: {},
  }
  emoticon_data.each do |key, value|
    new_hash[:get_meaning][value[1]] = key
    new_hash[:get_emoticon][value[0]] = value[1]
  end
  new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  japanese_translation
  result
end

def get_english_meaning(file_path, emoticon)
  english_translation
  result
end