class ProductSerializer < ActiveModel::Serializer
  attributes :id,:price,:unique_id,:product_type
  def unique_id
    object.price+object.id.to_i
  end

end
