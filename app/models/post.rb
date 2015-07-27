class Post
  attr_accessor :id, :title, :body, :summary, :author, :created_at, :image

  def initialize(hash)
    @id         = hash[:id]
    @title      = hash[:title]
    @body       = hash[:body]
    @summary    = hash[:summary]
    @author     = hash[:author]
    @created_at = hash[:created_at] || Time.now
    @image      = hash[:image]
  end

  def self.all
    unless defined?(@@posts)
      @@posts = [
          Post.new(
            :id         => 1,
            :title      => "Dark Warrior",
            :body       => "FILL_ME_IN",
            :summary    => "Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing. Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing.
",          :image      => "villian2.jpg",
            :author     => "Zack Taylor",
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 2,
            :title      => "A City in Peril",
            :body       => "FILL_ME_IN",
            :summary    => "Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing. Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing.
",          :image      => 'villian1.jpg',
            :author     => "Zack Taylor",
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 3,
            :title      => "Foul Play In The Sky",
            :body       => " ",
            :summary    => "Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing. Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing. ",
            :image      => 'villian4.jpg',
            :author     => "Zack Taylor",
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 4,
            :title      => "Lost In Space",
            :body       => " ",
            :summary    => "Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing. Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing.
",          :image      => 'villian4.jpg',
            :author     => "Zack Taylor",
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 5,
            :title      => "Never Back Down",
            :body       => "FILL_ME_IN",
            :summary    => "Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing. Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing.
",          :image      => "villian2.jpg",
            :author     => "Zack Taylor",
            :created_at => (1..10).to_a.sample.months.ago
          )
      ]
    end
    @@posts
  end

  def self.find(id)
    all.select{|post| post.id == id}.first
  end


end
