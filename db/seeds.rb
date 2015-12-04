require_relative "config"

Article.destroy_all
Category.destroy_all
Comment.destroy_all
Section.destroy_all
User.destroy_all


# articles = [
#   {name: "House in Vermont", date_created: "01/03/2005", edit_date: "11/10/2010"}, 
#   {name: "The Red Saucer", date_created: "01/03/2010", edit_date: "11/10/2013"}, 
#   {name: "Leo Bothell", date_created: "01/03/2003", edit_date: "09/10/2015"},
#   {name: "Only One Egg", date_created: "01/03/2013", edit_date: "08/23/2015"}
# ];

# users = [
#   {name: "Valerie Fish"},
#   {name: "Nigel Parson"},
#   {name: "Jamima Parson"},
#   {name: "Suzane Bothell"}
# ]


# comments = [

#   [ {name: "That kitchen", body: "I remember making pancakes there all the time. The stove was epic", date_created: "12/25/2011"},
#     {name: "Looks better in pictures", body: "", date_created: "08/15/2012"},
#     {name: "Was that creek ever swim-able?", body: "I don't remeber ever dipping in.", date_created: "08/15/2012"}],
#   [ {name: "BEST.PLACE.EVER", body: "How are those beets so good. Also the bread. Also the shirley temples - no shame.", date_created: "11/15/2012"}],
#   [ {name: "Such a shame", body: "Have to get another one of those", date_created: "08/15/2014"}]
# ]



  a1 = Article.create({name: "House in Ghent", date_created: "01/03/2009", edit_date: "11/10/2015"})
  u1 = User.create({name: "Larry Parson"})
  
  a1.user_id = u1.id
  a1.save
  
  s1 = Section.create({name: "Overview", body: "ldsfnsdlknflkdsnfndslknflkndslknflksdnlkfnsdlknflksdnlkfnlknsdlkfnlskdnflkdsnlkfnlkdsn", edit_date: "12/05/2014"})
  s1.article_id = a1.id
  s1.save
  s1 = Section.create({name: "Who's involved", body: "ldkfndslkflndslknflkndslnflkdnslknflkdsnlkfnlksdnlkfnlkdsnlfknlkdsnflksdnlkfnlsd", edit_date: "12/05/2015"})
  s1.article_id = a1.id
  s1.save
  s1 = Section.create({name: "Reference", body: "xzlklkxzlhflkdnlrkelkdscnoizxlkfslknalksnasknmdkljxkmclksnieflkdlkcxhlkcnxz", edit_date: "12/10/2015"})
  s1.article_id = a1.id
  s1.save

  c1 = Comment.create({name: "it's so beautiful now!", body: "Please upload finished pictures! All done now?", date_created: "12/25/2009"})
  c1.article_id = a1.id
  c1.save
  c1 = Comment.create({name: "1997?", body: "Wow that's a really long time", date_created: "08/15/2012"})
  c1.article_id = a1.id
  c1.save
  
  cat1 = Category.create({name: "Marriage"})
  a1.categories.push(cat1)





  # creating an article
  a1 = Article.create({name: "Dan's DNA", date_created: "06/05/2011", edit_date: "12/05/2012"})
  u1 = User.create({name: "Ally Bothell"})
  
  #giving it a user ID
  a1.user_id = u1.id
  a1.save
  
  #attatching a section to the article
  s1 = Section.create({name: "Overview", body: "ldsfnsdlknflkdsnfndslknflkndslknflksdnlkfnsdlknflksdnlkfnlknsdlkfnlskdnflkdsnlkfnlkdsn", edit_date: "12/05/2014"})
  s1.article_id = a1.id
  s1.save
  s1 = Section.create({name: "Who's involved", body: "ldkfndslkflndslknflkndslnflkdnslknflkdsnlkfnlksdnlkfnlkdsnlfknlkdsnflksdnlkfnlsd", edit_date: "12/05/2015"})
  s1.article_id = a1.id
  s1.save
  s1 = Section.create({name: "Reference", body: "xzlklkxzlhflkdnlrkelkdscnoizxlkfslknalksnasknmdkljxkmclksnieflkdlkcxhlkcnxz", edit_date: "12/10/2015"})
  s1.article_id = a1.id
  s1.save

  c1 = Comment.create({name: "let's talk?", body: "Want to have coffee and discuss? Beautifully written!", date_created: "02/05/2015"})
  c1.article_id = a1.id
  c1.save
  c1 = Comment.create({name: "Update?", body: "Did you ever do the test?????", date_created: "08/15/2015"})
  c1.article_id = a1.id
  c1.save
  
  #putting the article in a category
  cat1 = Category.create({name: "Comic"})
  a1.categories.push(cat1)
  cat1 = Category.create({name: "Parson Family"})
  a1.categories.push(cat1)



  a2 = Article.create({name: "Henry's Second Wife", date_created: "01/03/2013", edit_date: "06/05/2015"})
  u2 = User.create({name: "Phylis Parson"})
 
  a2.user_id = u2.id
  a2.save
 
  s2 = Section.create({name: "Overview", body: "ldsfnsdlknflkdsnfndslknflkndslknflksdnlkfnsdlknflksdnlkfnlknsdlkfnlskdnflkdsnlkfnlkdsn", edit_date: "12/05/2014"})
  s2.article_id = a2.id
  s2.save
  s2 = Section.create({name: "Who's involved", body: "ldkfndslkflndslknflkndslnflkdnslknflkdsnlkfnlksdnlkfnlkdsnlfknlkdsnflksdnlkfnlsd", edit_date: "12/05/2015"})
  s2.article_id = a2.id
  s2.save
  s2 = Section.create({name: "Reference", body: "xzlklkxzlhflkdnlrkelkdscnoizxlkfslknalksnasknmdkljxkmclksnieflkdlkcxhlkcnxz", edit_date: "12/10/2015"})
  s2.article_id = a2.id
  s2.save
  
  c2 = Comment.create({name: "Love the shout out!", body: "I'll fill this out more in depth when I have time!", date_created: "12/05/2015"})
  c2.article_id = a2.id
  c2.save
 
  # cat2 = Category.create({name: "Marriage"})
  a2.categories.push(cat1)





  a1 = Article.create({name: "Oklahoma Porch", date_created: "11/05/2014", edit_date: "12/05/2014"})
  u1 = User.create({name: "Betty Parson"})
  
  a1.user_id = u1.id
  a1.save
  
  s1 = Section.create({name: "Overview", body: "ldsfnsdlknflkdsnfndslknflkndslknflksdnlkfnsdlknflksdnlkfnlknsdlkfnlskdnflkdsnlkfnlkdsn", edit_date: "12/05/2014"})
  s1.article_id = a1.id
  s1.save
  s1 = Section.create({name: "Who's involved", body: "ldkfndslkflndslknflkndslnflkdnslknflkdsnlkfnlksdnlkfnlkdsnlfknlkdsnflksdnlkfnlsd", edit_date: "12/05/2015"})
  s1.article_id = a1.id
  s1.save
  s1 = Section.create({name: "Reference", body: "xzlklkxzlhflkdnlrkelkdscnoizxlkfslknalksnasknmdkljxkmclksnieflkdlkcxhlkcnxz", edit_date: "12/10/2015"})
  s1.article_id = a1.id
  s1.save

  c1 = Comment.create({name: "Reference?", body: "Can you send me the article you found? Or at least link it.", date_created: "02/05/2015"})
  c1.article_id = a1.id
  c1.save
  c1 = Comment.create({name: "This is insane", body: "I can't believe this is actually true! Always thought it was myth.", date_created: "04/03/2015"})
  c1.article_id = a1.id
  c1.save
  c1 = Comment.create({name: "Premonition", body: "That poem is crazyness. Is that written before the event or while in jail? Would love to know if remorsefull", date_created: "04/10/2015"})
  c1.article_id = a1.id
  c1.save
  c1 = Comment.create({name: "Still Don't believe", body: "Betty, it is disrespectful to even write this down.", date_created: "08/15/2015"})
  c1.article_id = a1.id
  c1.save
  
  cat1 = Category.create({name: "Rumor"})
  a1.categories.push(cat1)
  cat1 = Category.create({name: "Proven by Press"})
  a1.categories.push(cat1)
  cat1 = Category.create({name: "Parson Family"})
  a1.categories.push(cat1)


 


