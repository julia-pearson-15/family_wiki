module App

  class Server < Sinatra::Base
    # to use for delete methods!
    set :method_override, true

    $markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)

    get "/" do
      redirect to "/articles"
    end


    get "/articles" do
      "Hello World"
      @articles = Article.all 
      # binding.pry

      erb :articles_index
    end

    get "/articles/new" do
      erb :new_article
    end

    post "/articles/new" do  
      article = Article.create({name: params[:name], date_created: DateTime.date})
      category = Category.create({name: params["category"]}) 
      article.categories.push(category)
      article.user = User.first
      article.save

      section = Section.create({name: params[:section_one_name], body: params[:section_one_body]})

      redirect to ("/articles/#{article.id}")
    end

    get "/articles/:id" do
      # binding.pry
      @article = Article.find_by(id: params["id"])
      @sections = @article.sections
      @comments = @article.comments

      erb :articles_show
    end

    get "/categories" do
      @categories = Category.all 
      erb :categories_index
    end

    get "/categories/:id" do
      @category = Category.find_by(id: params["id"])
      @articles = @category.articles
        
      erb :categories_show
    end

    get "/users" do
      @users = User.all 
      erb :users_index
    end

    get "/users/new" do
      erb :new_user
    end

    post "/users/new" do
      user = User.create({name: params[:name], age: params[:age], email: params[:email], img_url: params[:image_url]})

      redirect to "/users"
    end

    get "/users/:id" do
      @user = User.find_by(id: params["id"])
      @articles = @user.articles
        
      erb :users_show
    end

    get "/articles/:article_id/edit/:section_id" do
      @section = Section.find_by(id: params["section_id"])
      @article = Article.find_by(id: params["article_id"])
      erb :edit_section
    end

    patch "/articles/:article_id/edit/:section_id" do
      section = Section.find_by(id: params["section_id"])
      section.name= params["name"]
      section.body= params["body"]
      section.edit_date= DateTime.now
      section.save

      redirect to "/articles/#{params["article_id"]}"
    end

    get "/articles/:article_id/comments/new" do
      @article=Article.find(params[:article_id])
      erb :new_comment
    end

    post "/articles/:article_id/comments/new" do  
      article=Article.find(params[:article_id])
      comment = Comment.create({name: params[:name], date_created: DateTime.now, body: params[:body]})
      comment.user = User.first
      comment.article_id = article.id
      comment.save

      redirect to ("/articles/#{params[:article_id]}")
    end







    get "/login" do
      erb :login
    end


  end


end

