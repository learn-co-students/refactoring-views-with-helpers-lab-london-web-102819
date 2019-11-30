class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    result = self.artist.name if self.artist
  end

  def artist_name=(name)
    @artist = Artist.find_by(name: name)
    if @artist
      @artist.update(name: name)
      self.artist = @artist
    else
      self.artist = Artist.create(name: name)
    end
  end
end
