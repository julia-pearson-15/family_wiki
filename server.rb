module App

  class Server < Sinatra::Base
    # to use for delete methods!
    set :method_override, true
    enable :sessions

    $markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)

    get "/" do
      @this_user = User.find(session[:user_id]) if session[:user_id]

      erb :splash
    end

    post "/sessions" do
      @user = User.find_by({name: params[:name]})
      session[:user_id] = @user.id

      redirect to "/"
    end
    
    delete "/sessions" do
      session[:user_id] = nil
      redirect to "/"
    end

    get "/articles" do
      @this_user = User.find(session[:user_id]) if session[:user_id]
      @articles = Article.all 
      # binding.pry

      erb :articles_index
    end

    get "/articles/new" do
      @this_user = User.find(session[:user_id]) if session[:user_id]
      erb :new_article
    end

    post "/articles/new" do  
      article = Article.create({name: params[:name], date_created: DateTime.now})
      if Category.find_by(name: params["category"])
        category = Category.find_by(name: params["category"])
      else
        category = Category.create({name: params["category"]}) 
      end
      article.categories.push(category)
      article.user = User.find(session[:user_id]) 
      article.save
      section = Section.create({name: params["section_one_name"], body: params["section_one_body"], edit_date: DateTime.now})
      section.article_id = article.id
      section.users.push(User.find(session[:user_id]))
      section.save

      section = Section.create({name: params[:section_one_name], body: params[:section_one_body]})

      redirect to ("/articles/#{article.id}")
    end

    get "/articles/:id" do
      # binding.pry
      @this_user = User.find(session[:user_id]) if session[:user_id]
      @article = Article.find_by(id: params["id"])
      @sections = @article.sections
      @comments = @article.comments

      erb :articles_show
    end

    get "/categories" do
      @this_user = User.find(session[:user_id]) if session[:user_id]
      @categories = Category.all 
      erb :categories_index
    end

    get "/categories/:id" do
      @this_user = User.find(session[:user_id]) if session[:user_id]
      @category = Category.find_by(id: params["id"])
      @articles = @category.articles
        
      erb :categories_show
    end

    get "/users" do
      @this_user = User.find(session[:user_id]) if session[:user_id]
      @users = User.all 
      erb :users_index
    end

    get "/users/new" do
      @this_user = User.find(session[:user_id]) if session[:user_id]
      erb :new_user
    end

    post "/users/new" do
      user = User.create({name: params[:name], age: params[:age], email: params[:email], img_url: params[:image_url]})

      redirect to "/users"
    end

    get "/users/:id" do
      @user = User.find_by(id: params["id"])
      @this_user = User.find(session[:user_id]) if session[:user_id]
      @articles = @user.articles
        
      erb :users_show
    end

    get "/articles/:article_id/edit/:section_id" do
      @this_user = User.find(session[:user_id]) if session[:user_id]
      @section = Section.find_by(id: params["section_id"])
      @article = Article.find_by(id: params["article_id"])
      erb :edit_section
    end

    patch "/articles/:article_id/edit/:section_id" do
      section = Section.find_by(id: params["section_id"])
      section.name= params["name"]
      section.body= params["body"]
      section.edit_date= DateTime.now
      section.users.push(User.find(session[:user_id]))
      section.save

      redirect to "/articles/#{params["article_id"]}"
    end

    get "/articles/:article_id/sections/new" do
      @this_user = User.find(session[:user_id]) if session[:user_id]
      @article = Article.find_by(id: params["article_id"])
      erb :new_section
    end

    post "/articles/:article_id/sections/new" do
      section = Section.create({name: params["name"], body: params["body"], edit_date: DateTime.now})
      section.article_id = params[:article_id]
      section.users.push(User.find(session[:user_id]))
      section.save

      redirect to ("/articles/#{params[:article_id]}")
    end

    get "/articles/:article_id/comments/new" do
      @this_user = User.find(session[:user_id]) if session[:user_id]
      @article=Article.find(params[:article_id])

      erb :new_comment
    end

    post "/articles/:article_id/comments/new" do  
      article=Article.find(params[:article_id])
      comment = Comment.create({name: params[:name], date_created: DateTime.now, body: params[:body]})
      comment.user = User.find(session[:user_id])
      comment.article_id = article.id
      comment.save

      redirect to ("/articles/#{params[:article_id]}")
    end


    get "/login" do

      erb :login
    end


  end


end

