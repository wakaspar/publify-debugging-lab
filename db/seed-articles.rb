# To run this task use `rake db:seed:articles`

if User.first # ensures publify was setup & admin created

  seed_date = Date.today
  seed_tags = ["happy", "coding", "debugging", "pry", "grep", "wdi", "legacy code"]
  article_qty = 24
  user = User.first
  blog = Blog.first

  blog.articles.destroy_all
  article_qty.times do
    blog.articles.create do |article|
      article.title = FFaker::Company.catch_phrase
      article.body = FFaker::HipsterIpsum.paragraph(rand(1..5))
      seed_date -= 30
      article.published_at = seed_date
      article.published = true
      article.user = user
      article.keywords = seed_tags.sample(rand(1..4)).join(",")
    end
  end

  p "Seeded #{article_qty} articles"

end
