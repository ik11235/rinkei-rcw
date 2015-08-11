require 'yaml'

RECIPE_PATH = './recipes.yml'

recipes = YAML.load_file(RECIPE_PATH)

recipe_id = ARGV[0]

# 出力
if recipe_id
  recipe = recipes[recipe_id.to_i - 1]
  puts "#{recipe_id}: #{recipe['name']}"
else
  recipes.each_with_index do |recipe, i|
    id = i + 1
    puts "#{id}: #{recipe['name']}"
  end
end
