module App

  class Server < Sinatra::Base
    # to use for delete methods!
    set :method_override, true

    $markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)

    get "/" do
      "Hello World"
      @articles = Article.all 
      # binding.pry

      erb :index
    end

    get "/articles/new" do
      erb :new_article
    end

    post "/articles/new" do  
      article = Article.create({name: params[:name], category: params[:category]})
      article.user = User.first
      article.save
      section = Section.create({name: params[:section_one_name], body: params[:section_one_body]})

      # article.name = params[:name]
      # article.body = params[:body]
      # article.user = User.first
      # article.save
      redirect ("/articles/#{article.id}>")
    end

    get "/articles/:id" do
      # binding.pry
      @article = Article.find_by(id: params["id"])
      @sections = Section.where(@article.id)
      @comments = Comment.where(@article.id)

      erb :article_page
    end

    get "/categories" do
      @categories = Category.all 
      erb :categories_page
    end

    get "/categories/:id" do
      @category = Category.find_by(id: params["id"])
      @articles = @category.articles
        
      erb :category_articles
    end

    get "/users" do
      @users = User.all 
      erb :users_page
    end

    get "/users/:id" do
      @user = User.find_by(id: params["id"])
      @articles = @user.articles
        
      erb :user_articles
    end

    get "/articles/:article_id/edit/:section_id" do
      @section = Section.find_by(id: params["section_id"])
      @article = Section.find_by(id: params["article_id"])
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







    get "/login" do
      erb :login
    end


  end


end

