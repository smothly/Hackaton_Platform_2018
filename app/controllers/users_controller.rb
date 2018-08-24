class UsersController < ApplicationController
  def show
    # @user = User.find(params[:id])
     @user_email = current_user.email
     @user_name = current_user.name
     @user_major = current_user.major
     @user_student_id = current_user.student_id
     
     @user_comments = current_user.comments
     @user_articles = current_user.articles
  end
  
  def messages
     @user_messages = current_user.messages
  end
  
end
