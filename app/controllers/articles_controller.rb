class ArticlesController < ApplicationController


  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])

    if @article.save
      redirect_to(action: :index)
    else
      flash.now[:error] = "Give title and content"
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    @article.title = params[:article][:title]
    @article.content = params[:article][:content]

    if @article.save
      redirect_to(action: :index)
    else
      flash.now[:error] = "Give title and content"
      render :new
    end
  end

  def destroy

    Article.delete(params[:id])
    redirect_to(action: :index)
  end

  def index
    @articles = Article.all
  end
end
