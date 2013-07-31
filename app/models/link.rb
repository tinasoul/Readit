class Link < ActiveRecord::Base
  attr_accessible :title, :url

  belongs_to :user
  has_many :comments

# when passing strings into database, use this Active Record syntax
  def self.search(query)
    where('title LIKE ?', "%#{query}%")
  end

  " WHERE title LIKE '%list%' "
  

end
