## Questions:

<<<<<<< HEAD:questions
How do I make my layout's stylesheet apply to all pages/have seperate ones for each page.
Is there a less labor intensive way of seeding?
























---
## in models/
=======
## In models/
>>>>>>> 8810ba69e2f7351601c4db22703e0151b868f336:questions.md
general question - join tables make themselves? Must I seed them?

article.rb :
line.2 can I just do  -  has_many :sections :comments
answer: no I cannot. has_many is a method that takes 1 argument

## In views/

layout.erb : 
line.1 this will be the changing html etc. for dynamic section of page?

## In public/

index.html :
general: do I need an yeild here to get to layout?

line.1 this will be the html etc. for whole page (skeleton)?

## In db/

config.rb
line.6 why do I need to say db/when we're already in db?
answer: because we actually run this in our root file

---
## Things to think about

polymorphic associations -- two types of comments

erb partials

