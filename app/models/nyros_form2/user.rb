module NyrosForm2
  class User < ApplicationRecord
    validates :email, :uniqueness => true
  end
end
