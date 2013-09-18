# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

data = [
  {
    title: "aaaa",
    body: "aaaaa"
  },
  {
    title: "bbbbbb",
    body: "bbbbbbb"
  },
  {
    title: "cccc",
    body: "cccccccccc"
  },
  {
    title: "bbbbbb",
    body: "bbbbbb"
  },
  {
    title: "eeeee",
    body: "eeeee"
  },
  {
    title: "ffffff",
    body: "fffffff"
  },
  {
    title: "aaaaa",
    body: "search word"
  },
  {
    title: "aaaaa",
    body: "search word word"
  },
  {
    title: "aaaaa",
    body: "search word word word"
  },
  {
    title: "あいうえお",
    body: "かきくけこ"
  },
]

data.each do |d|
  Topic.create(
    title: d[:title],
    body: d[:body]
  )
end
