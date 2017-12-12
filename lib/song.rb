class Song
  attr_accessor :name, :artist, :genre
@@count=0
  @@genres=[]
  @@artists=[]


  def initialize(name, artist, genre)
    @@count+=1
    @name=name
    @artist=artist
    @genre=genre

    @@artists<<@artist
    @@genres<<@genre

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
@@genres.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
    
    counts
  end

  def self.artist_count
    counts = Hash.new 0
    @@artists.each do |word|
      counts[word] += 1
    end
    counts
  end



end
