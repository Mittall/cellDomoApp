#class ProductCell < Cell::Rails

#Cell inherit the category cell to use the category method in product cell

class ProductCell < CategoryCell
  
  cache :categoryShow

  cache :categoryShow do |cell, categoryShow|
    categoryShow.id
  end

  #This method overwrite the category 'cshow' method.
  #def cShow
    #render
  #end

  def show
    @product = Product.new
    @products = Product.all
    render
  end

  def categoryShow
    @categories = Category.all
    @products = Product.all
    render 
  end

end
