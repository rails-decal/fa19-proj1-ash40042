class Pokemon < ApplicationRecord
  belongs_to :trainer, optional:true
  validates :name, presence: true, uniqueness: {message: "needs a unique name"}
end
