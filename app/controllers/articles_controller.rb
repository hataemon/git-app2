class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

 add-posting-article-function
  # GET /articles
  # GET /articles.json


master
  def index
    @articles = Article.all
  end

 add-posting-article-function
  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new


  def show
  end


 master
  def new
    @article = Article.new
  end

 add-posting-article-function
  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json

  
  def edit
  end

 
 master
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

 add-posting-article-function
  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json


 master
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

 add-posting-article-function
  # DELETE /articles/1
  # DELETE /articles/1.json


 master
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
 add-posting-article-function
    # Use callbacks to share common setup or constraints between actions.


 master
    def set_article
      @article = Article.find(params[:id])
    end

 add-posting-article-function
    # Never trust parameters from the scary internet, only allow the white list through.


 master
    def article_params
      params.require(:article).permit(:title, :author, :text)
    end
end
