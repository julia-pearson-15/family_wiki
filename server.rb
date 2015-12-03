module App

  class Server < Sinatra::Base
    # to use for delete methods!
    set :method_override, true

    get "/" do
      "Hello World"
      @articles = Article.all 
      # binding.pry

      erb :index
    end

    get "/article/:id" do
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

    get "/login" do
      erb :login
    end

  end


end

