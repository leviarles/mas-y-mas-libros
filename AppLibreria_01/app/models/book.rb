class Book < ActiveRecord::Base
  belongs_to :category
  belongs_to :provider

    def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("nombrelibro like ?", "%#{query}%") 
    #where("title ==Leyendas de crepy pasta") 
  end
end
