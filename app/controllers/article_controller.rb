class ArticleController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to :back
  end

  def destroy
    if check_user == true

      @article.destroy
      redirect_to Club.find(@article.club_id)

    #로그인하지 않은 경우
    elsif current_user == nil
      #TODO: 로그인 후 이용해주세요 알람창 뜨게하기 자바스크립트로 해야함
      redirect_to 'users/sign-in'

    # 본인 댓글이 아닐경우
    else
      #TODO: 본인댓글만 삭제할 수 있습니다. 알람창 뜨게하기 자바스크립트로 해야함
      redirect_to :back
    end
  end

  def edit

  end

  def update
    @article.update(article_params)
    redirect_to Club.find(@article.club_id)
  end

  def new
  end

  private

    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :content, :club_id, :user_id, {images: []})
    end

    def check_user
      if User.find(@article.user_id) == current_user
        return true
      else
        return false
      end
    end
end
