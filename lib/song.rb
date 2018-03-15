class Song

  @@artists = []
  @@count = 0
  @@genres = []
  attr_accessor  :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@count += 1
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    gen_count = {}
    @@genres.uniq.each do |gen_u|
      count = 0
      @@genres.each do |gen|
        if gen == gen_u
          count += 1
        end
      end
      gen_count[gen_u] = count
    end
    gen_count
  end

  def self.artist_count
    art_count = {}
    @@artists.uniq.each do |art_u|
      count = 0
      @@artists.each do |art|
        if art == art_u
          count += 1
        end
      end
      art_count[art_u] = count
    end
    art_count
  end
end
