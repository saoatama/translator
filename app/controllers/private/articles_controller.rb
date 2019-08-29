class Private::ArticlesController < ApplicationController
  before_action :set_private_article, only: [:show, :edit, :update, :destroy]

  # GET /private/articles
  # GET /private/articles.json
  def index
    @private_articles = Private::Article.all
  end

  # GET /private/articles/1
  # GET /private/articles/1.json
  def show
    @path = "#{Dir.pwd}/public#{@private_article.path}"
    @file = File.open(@path)
  end

  # GET /private/articles/new
  def new
    @private_article = Private::Article.new
  end

  # GET /private/articles/1/edit
  def edit
  end

  # POST /private/articles
  # POST /private/articles.json
  def create
    @private_article = Private::Article.new(private_article_params)

    respond_to do |format|
      if @private_article.save
        format.html { redirect_to @private_article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @private_article }
      else
        format.html { render :new }
        format.json { render json: @private_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /private/articles/1
  # PATCH/PUT /private/articles/1.json
  def update
    respond_to do |format|
      if @private_article.update(private_article_params)
        format.html { redirect_to @private_article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @private_article }
      else
        format.html { render :edit }
        format.json { render json: @private_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /private/articles/1
  # DELETE /private/articles/1.json
  def destroy
    @private_article.destroy
    respond_to do |format|
      format.html { redirect_to private_articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_private_article
      @private_article = Private::Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def private_article_params
      params.require(:private_article).permit(:user_id, :name, :path)
    end
end
