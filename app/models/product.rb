class Product < ApplicationRecord

    # after_create :check_price
    has_one_attached :image
    # def check_price
    #     if self.price > 500
    #         self.update(product_type: "Expensive")
    #     else
    #         self.update(product_type: "Cheap")
    #     end
    # end
    has_and_belongs_to_many :users
end
