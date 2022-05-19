require 'faker'

List.destroy_all
Movie.destroy_all

25.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::LoremFlickr.image,
    rating: Faker::Number.number(digits: 1)
  )
end


5.times do
  List.create!(
    name: Faker::Fantasy::Tolkien.location
  )
end

List.all.each do |list|
  5.times do
    Bookmark.create!(
      comment: Faker::Fantasy::Tolkien.poem,
      list: list,
      movie: Movie.all.sample
    )
  end
end
