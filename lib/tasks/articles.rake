namespace :db do
  namespace :seed do
    task articles: :environment do
      load(File.join(Rails.root, '/db/seed-articles.rb'))
    end
  end
end
