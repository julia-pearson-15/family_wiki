require_relative "config"

# Dir.glob("models/*.rb").each do |path|
#   to_delete = path.split("/")[1]
#   to_delete = to_delete.split(".")[0]
#   puts to_delete.capitalize()
#   to_delete.destroy_all()
# end 

Article.destroy_all
Category.destroy_all
Comment.destroy_all
Section.destroy_all
User.destroy_all

a1 = Article.create({name: "Oklahoma Porch", date_created: "12/05/2014", edit_date: "12/05/2014"})
a2 = Article.create({name: "ny ", date_created: "12/11/2014", edit_date: "12/05/2014"})

c1 = Category.create({name: "Rumor"})

a2.delete

a1.categories.push(c1)

# articles = [
#   {name: "Oklahoma Porch", date_created: "12/05/2014", edit_date: "12/05/2014"},
#   {name: "To New York", date_created: "06/05/1920", edit_date: "12/05/2014"},
# ];


# Article.create(articles);
