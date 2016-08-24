class Product < ApplicationRecord
has_many :categoriesproduct
has_many :categories, through: :categoriesproduct
end
