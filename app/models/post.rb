class Post < ActiveRecord::Base
   belongs_to :student
   has_many :comments
   

end

