require_relative "config"

Article.destroy_all
Category.destroy_all
Comment.destroy_all
Section.destroy_all
User.destroy_all


users = [
  {password: "frank", name: "Valerie Fish", age: 45, email: "val.Fish@gmail.com", img_url: "/img/valerie_image.png"},
  {password: "frank", name: "Nigel Parson", age: 62, email: "nBparson@verizon.net", img_url: "/img/nigel_image.png"},
  {password: "frank", name: "Jamima Parson", age: 22, email: "jamima.parson@gmail.com", img_url: "/img/jamima_image.png"},
  {password: "frank", name: "Suzane Ozborn", age: 81, email: "anne.Ozborn@gmail.com", img_url: "/img/suzane_image.png"},
  {password: "frank", name: "Larry Parson", age: 26, email: "larry.parson@gmail.com", img_url: "/img/larry_image.png"},
  {password: "frank", name: "Ally Bothell", age: 21, email: "aboth@yahoo.com", img_url: "/img/ally_image.png"},
  {password: "frank", name: "Phylis Parson", age: 70, email: "phylis.parson@AOL.com", img_url: "/img/phylis_image.png"},
  {password: "frank", name: "Betty Hidal", age: 90, email: "theBets@hotmail.com", img_url: "/img/betty_image.png"}
]

articles = [
  {name: "House in Vermont", date_created: "01/03/2005", edit_date: "11/10/2010"}, 
  {name: "The Red Saucer", date_created: "01/03/2010", edit_date: "11/10/2013"}, 
  {name: "Leo Bothell", date_created: "01/03/2003", edit_date: "09/10/2015"},
  {name: "Only One Egg", date_created: "01/03/2013", edit_date: "08/23/2015"},
  {name: "House in Ghent", date_created: "01/03/2009", edit_date: "11/10/2015"},
  {name: "Dan's DNA", date_created: "06/05/2011", edit_date: "12/05/2012"},
  {name: "Henry's Second Wife", date_created: "01/03/2013", edit_date: "06/05/2015"},
  {name: "Oklahoma Porch", date_created: "11/05/2014", edit_date: "12/05/2014"}
];

sections = [ 

  [{name: "Overview", body: "**Built in 1825**, this farmhouse in southern Vermont was in a state of disrepair when Dan and Suzzie **bought it in 1965**. Suzzie wanted a place out of the city and Dan was excited about the idea of owning actual land, so the couple started the long repair process. 5 years later the family of 5 had a strong connection to their country refuge. 
    --- 
    It was put back **on the market in 2005** by Dan's third ex-wife.", edit_date: "12/05/2014"},
    {name: "Photos", body: "![](http://i.imgur.com/MTTzWdQ.jpg?1)", edit_date: "12/05/2015"},
    {name: "Update", body: "*Valerie Fish recently visited the home and found it how she remembered. As she was poking her head into the kitchen windows, however, an elderly man started up from his armchair and yelled at her as he reached for his gun.*", edit_date: "12/10/2015"}],
  [{name: "Origin Story", body: "*ldsfnsdlknflkdsnfndslknflkndslknflksdnlkfnsdlknflksdnlkfnlknsdlkfnlskdnflkdsnlkfnlkdsn*", edit_date: "12/05/2014"},
    {name: "Who's involved", body: "*ldkfndslkflndslknflkndslnflkdnslknflkdsnlkfnlksdnlkfnlkdsnlfknlkdsnflksdnlkfnlsd*", edit_date: "12/05/2015"},
    {name: "Reference", body: "*xzlklkxzlhflkdnlrkelkdscnoizxlkfslknalksnasknmdkljxkmclksnieflkdlkcxhlkcnxz*", edit_date: "12/10/2015"}],
  [{name: "Origin Story", body: "Leo Bothell was born in Western Canada near the Washington state border. His mother, a prominent Lahasa Apso show dog appeared in the feature film *Best In Show*. Leo, however, was born with strange nasal passages that make him very sneezy, a loud snorer, and unable to smell like a normal dog. To compensate for his lack of dog-like smell, Leo has learned other ways of recognizing people. His reliance on his sight, hearing, and touch has given him human-like traits like investigate foreign objects with his paws and tongue to understand them.", edit_date: "12/05/2014"},
    {name: "Photos", body: "![](http://i.imgur.com/9fi2z8jl.jpg)  ![] (http://i.imgur.com/9br4Hmll.jpg)", edit_date: "12/05/2015"},
    {name: "Favorite Toy", body: "Tennis Balls. He has required one dental surgery so far to remove bad teeth eroded by tennis balls. Worth it.", edit_date: "12/10/2015"}],
  [{name: "Overview", body: "*dsfnsdlknflkdsnfndslknflkndslknflksdnlkfnsdlknflksdnlkfnlknsdlkfnlskdnflkdsnlkfnlkdsn*", edit_date: "12/05/2014"},
    {name: "Who's involved", body: "*ldkfndslkflndslknflkndslnflkdnslknflkdsnlkfnlksdnlkfnlkdsnlfknlkdsnflksdnlkfnlsd*", edit_date: "12/05/2015"},
    {name: "Reference", body: "*xzlklkxzlhflkdnlrkelkdscnoizxlkfslknalksnasknmdkljxkmclksnieflkdlkcxhlkcnxz*", edit_date: "12/10/2015"}],
  [{name: "Overview", body: "*ldsfnsdlknflkdsnfndslknflkndslknflksdnlkfnsdlknflksdnlkfnlknsdlkfnlskdnflkdsnlkfnlkdsn*", edit_date: "12/05/2014"},
    {name: "Who's involved", body: "*ldkfndslkflndslknflkndslnflkdnslknflkdsnlkfnlksdnlkfnlkdsnlfknlkdsnflksdnlkfnlsd*", edit_date: "12/05/2015"},
    {name: "Reference", body: "*xzlklkxzlhflkdnlrkelkdscnoizxlkfslknalksnasknmdkljxkmclksnieflkdlkcxhlkcnxz*", edit_date: "12/10/2015"}],
  [{name: "Overview", body: "*ldsfnsdlknflkdsnfndslknflkndslknflksdnlkfnsdlknflksdnlkfnlknsdlkfnlskdnflkdsnlkfnlkdsn*", edit_date: "12/05/2014"},
    {name: "Who's involved", body: "*ldkfndslkflndslknflkndslnflkdnslknflkdsnlkfnlksdnlkfnlkdsnlfknlkdsnflksdnlkfnlsd*", edit_date: "12/05/2015"},
    {name: "Reference", body: "*xzlklkxzlhflkdnlrkelkdscnoizxlkfslknalksnasknmdkljxkmclksnieflkdlkcxhlkcnxz*", edit_date: "12/10/2015"}],
  [{name: "Overview", body: "*ldsfnsdlknflkdsnfndslknflkndslknflksdnlkfnsdlknflksdnlkfnlknsdlkfnlskdnflkdsnlkfnlkdsn*", edit_date: "12/05/2014"},
    {name: "Who's involved", body: "*ldkfndslkflndslknflkndslnflkdnslknflkdsnlkfnlksdnlkfnlkdsnlfknlkdsnflksdnlkfnlsd*", edit_date: "12/05/2015"},
    {name: "Reference", body: "*xzlklkxzlhflkdnlrkelkdscnoizxlkfslknalksnasknmdkljxkmclksnieflkdlkcxhlkcnxz*", edit_date: "12/10/2015"}],
  [{name: "Overview", body: "*ldsfnsdlknflkdsnfndslknflkndslknflksdnlkfnsdlknflksdnlkfnlknsdlkfnlskdnflkdsnlkfnlkdsn*", edit_date: "12/05/2014"},
    {name: "Who's involved", body: "*ldkfndslkflndslknflkndslnflkdnslknflkdsnlkfnlksdnlkfnlkdsnlfknlkdsnflksdnlkfnlsd*", edit_date: "12/05/2015"},
    {name: "Reference", body: "*xzlklkxzlhflkdnlrkelkdscnoizxlkfslknalksnasknmdkljxkmclksnieflkdlkcxhlkcnxz*", edit_date: "12/10/2015"}]
]

comments = [

  [ {name: "That kitchen", body: "I remember making pancakes there all the time. The stove was epic", date_created: "12/25/2011"},
    {name: "Looks better in pictures", body: "", date_created: "08/15/2012"},
    {name: "Was that creek ever swim-able?", body: "I don't remeber ever dipping in.", date_created: "08/15/2012"} ],
  [ {name: "BEST.PLACE.EVER", body: "How are those beets so good. Also the bread. Also the shirley temples - no shame.", date_created: "11/15/2012"}],
  [ {name: "A Wonderful Dog", body: "Photos?", date_created: "02/01/2014"} ],
  [ {name: "Such a shame", body: "Have to get another one of those", date_created: "08/15/2014"} ],
  [ {name: "it's so beautiful now!", body: "Please upload finished pictures! All done now?", date_created: "12/25/2009"},
    {name: "1997?", body: "Wow that's a really long time", date_created: "08/15/2012"} ],
  [ {name: "let's talk?", body: "Want to have coffee and discuss? Beautifully written!", date_created: "02/05/2015"},
    {name: "Update?", body: "Did you ever do the test?????", date_created: "08/15/2015"} ],
  [ {name: "Love the shout out!", body: "I'll fill this out more in depth when I have time!", date_created: "12/05/2015"} ],
  [ {name: "Reference?", body: "Can you send me the article you found? Or at least link it.", date_created: "02/05/2015"},
    {name: "This is insane", body: "I can't believe this is actually true! Always thought it was myth.", date_created: "04/03/2015"},
    {name: "Premonition", body: "That poem is crazyness. Is that written before the event or while in jail? Would love to know if remorsefull", date_created: "04/10/2015"},
    {name: "Still Don't believe", body: "Betty, it is disrespectful to even write this down.", date_created: "08/15/2015"} ]
]

categories = [
  {name: "Marriage"},
  {name: "Comic"},
  {name: "Parson Family"},
  {name: "Rumor"},
  {name: "Proven by Press"},
  {name: "Animals"},
  {name: "Real Estate"},
  {name: "Bothell Family"}
]

Category.create(categories)

articles.each_with_index do |article, i|
  a = Article.create(article)
  u = User.create(users[i])
  u.articles.push(a)
  sections[i].each do |section|
    s = Section.create(section)
    a.sections.push(s)
    u.sections.push(s)
  end
  comments[i].each do |comment|
    c = Comment.create(comment)
    a.comments.push(c)
    u = User.all[rand(User.all.length)]
    u.comments.push(c)
  end 
end

Article.all[0].categories.push(Category.all[2])
Article.all[0].categories.push(Category.all[6])
Article.all[1].categories.push(Category.all[7])
Article.all[1].categories.push(Category.all[5])
Article.all[2].categories.push(Category.all[7])
Article.all[3].categories.push(Category.all[6])
Article.all[3].categories.push(Category.all[2])
Article.all[4].categories.push(Category.all[7])
Article.all[4].categories.push(Category.all[1])
Article.all[4].categories.push(Category.all[3])
Article.all[5].categories.push(Category.all[3])
Article.all[5].categories.push(Category.all[1])
Article.all[6].categories.push(Category.all[2])
Article.all[6].categories.push(Category.all[0])
Article.all[7].categories.push(Category.all[2])
Article.all[7].categories.push(Category.all[3])
Article.all[7].categories.push(Category.all[4])

 


