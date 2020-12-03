# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

#viewers
ralles = User.create!(username: "ralles")
juan = User.create!(username: "juan")

#artists
artist1 = User.create!(username: "van gogh")
artist2 = User.create!(username: "monet")

#paintings
artwork1 = Artwork.create!(title: "Starry Night", image_url: "starrynight.com", artist_id: artist1.id)
artwork2 = Artwork.create!(title: "Sunflower", image_url: "sunflower.com", artist_id: artist1.id)

artwork3 = Artwork.create!(title: "Clouds", image_url: "clouds.com", artist_id: artist2.id)
artwork4 = Artwork.create!(title: "Rivers", image_url: "rivers.com", artist_id: artist2.id)



#artist shares
ArtworkShare.create!(viewer_id: ralles.id, artwork_id: artwork1.id)
ArtworkShare.create!(viewer_id: ralles.id, artwork_id: artwork2.id)
ArtworkShare.create!(viewer_id: ralles.id, artwork_id: artwork3.id)

ArtworkShare.create!(viewer_id: juan.id, artwork_id: artwork2.id)
ArtworkShare.create!(viewer_id: juan.id, artwork_id: artwork3.id)
ArtworkShare.create!(viewer_id: juan.id, artwork_id: artwork4.id)