class PlaylistsController < ApplicationController

  def index
    @playlist = Playlist.all
  end
end
