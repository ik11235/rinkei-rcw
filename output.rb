require 'yaml'

RECIPE_PATH = './recipes.yml'

recipes = YAML.load_file(RECIPE_PATH)

# 出力
recipes.each do |recipe|
  puts recipe['name']
end
