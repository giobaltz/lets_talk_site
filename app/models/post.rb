class Post < ApplicationRecord
  belongs_to :post

  def self.search(search)
    if search
      Post.where("text LIKE ?", "%"+search+"%")
    else
      Post.all
    end
  end
end
