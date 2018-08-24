class ClubController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :destroy]
  
  
  def index
    @clubs = Club.all
  end

  def new
    #폼헬퍼 쓰기위한 코드
    @club = Club.new
    # binding.pry
  end

  def create
    @club = Club.new(club_params)
    # binding.pry
    @club.save
    redirect_to @club
  end

  def show
    @club_articles = @club.articles
  end

  def edit
  end

  def update
    @club.update(club_params)
    redirect_to @club
  end

  def destroy
    @club.destroy
    redirect_to club_index_path
  end



  private

    def set_club
      @club = Club.find(params[:id])
    end

    def club_params
      params.require(:club).permit(:name, :content, :category, :mainimage)
    end

end
