class ArticlesController < ApplicationController

before_action :set_articles, only: [:show, :edit, :destroy, :update]

  def show
  end

  def index
  	@article = Article.all
  end

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.new(set_params)
  	if @article.save
      flash[:notice] = "Article was created successfully."
      redirect_to article_path(@article)
    else
        render :new, status: :unprocessable_entity 
    end
  end

  def edit
  end

  def destroy
  	@article.destroy
  	redirect_to articles_path
  end

def update
	if @article.update(set_params)
      flash[:notice] = "Article is updated successfully."
      redirect_to article_path(@article)
    else
        render :edit, status: :unprocessable_entity 
    end
end

private

def set_articles
	@article = Article.find(params[:id])
end

def set_params
	params.require(:article).permit(:title, :description)
end


end
