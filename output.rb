require 'yaml'

RECIPE_PATH = './recipes.yml'

recipes = YAML.load_file(RECIPE_PATH)

# 出力
recipes.each_with_index do |recipe, i|
  puts "#{i + 1}: #{recipe['name']}"
end
