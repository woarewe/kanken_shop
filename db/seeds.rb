# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

images = Dir.entries('app/assets/images/backpacks').select do |f|
  f =~ /.+\.jpg/
end

images.each do |image|
  color = (['color'] + image[0..-5].split('_')).join('-')
  img_link = ActionController::Base.helpers.asset_path("backpacks/#{image}")
  Backpack.create( color: color, image: img_link, status: true)
end


