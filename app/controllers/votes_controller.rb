class VotesController < ApplicationController

  def create
    @vote = Vote.new
    @vote.user_id = current_user.id
    @vote.song_id = params[:song_id].to_i

    if v.vote_check_passed
      v.save!
    else
      flash[:notice] = "Something seems to have gone wrong."
    end
    redirect_to :index
  end
end
