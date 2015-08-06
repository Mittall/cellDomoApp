class Product < ActiveRecord::Base
  belongs_to :category

  attr_accessible :name
  searchable do 
    text :name
    integer :price  
    integer :id
  end
end
