class CategoryCell < Cell::Rails
  def cShow
    @category = Category.all
    render
  end
end
