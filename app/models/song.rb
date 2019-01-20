class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    self.artist = Artist.new(name: "Drake") if self.artist = nil
    # drake = Artist.find_or_create_by(name: "Drake")
    # self.artist = drake
    # ----> The find_or_create_by method checks whether a record with the specified attributes exists. If it doesn't, then create is called
  end
end