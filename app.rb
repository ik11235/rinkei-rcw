# -*- coding: utf-8 -*-
require 'yaml'

def output(id, name, description)
  puts "#{id}: #{name} #{description}"
end

RECIPE_SET = {
  FILE_PATH: './recipes.yml',
  USER_NAME: 'ik'
}

recipes = YAML.load_file(RECIPE_SET[:FILE_PATH])

user_name = RECIPE_SET[:USER_NAME]
recipe_id = ARGV[1]

puts "ユーザー名: #{user_name}"
if recipe_id
  i = recipe_id.to_i - 1
  recipe = recipes[i]
  output(recipe_id, recipe['name'], recipe['description'])
else
  recipes.each_with_index do |recipe, i|
    id = i + 1
    output(id, recipe['name'], recipe['description'])
  end
end
