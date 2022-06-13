class ProductSerializer
  include JSONAPI::Serializer
  attributes :product_type,:year

  def year
    object.product_type+object.id.to_s
  end
  # attribute :product_type_with_year do |object|
  #   "#{object.product_type} (#{object.year})"
  # end
end
