class CommentController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to Club.find(Article.find(@comment.article_id).club_id)
  end

  def destroy
    @comment = Comment.find(params[:id])

    if check_user == true

      @comment.destroy
      redirect_to Club.find(Article.find(@comment.article_id).club_id)

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

  private
    def comment_params
      params.require(:comment).permit(:content, :article_id, :user_id)
    end

    def check_user
      if User.find(@comment.user_id) == current_user
        return true
      else
        return false
      end
    end

end
