class InterestController < ApplicationController
    def interest
        @interest = Interest.new()
        @interest.club_id = params[:c_id]
        @interest.save
        redirect_to '/users/show'
    end
    
    def cancel
    end
end
