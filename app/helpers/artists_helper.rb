module ArtistsHelper

    def display_artist(song)
        unless song.artist
            text = "<a href='/songs/#{song.id}/edit'>Add Artist</a>"
        else
            text = "<a href='/artists/#{song.artist.id}'>#{song.artist.name}</a>"
        end
        
        text
    end
end
