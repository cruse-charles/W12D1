# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  pokemon_id :bigint           not null
#  name       :string           not null
#  price      :integer          not null
#  happiness  :integer          not null
#  image_url  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord
  validates :image_url, presence: true
  # validates :pokemon_id, uniqueness: true
  validates :name, length: { in: 3..255 }
  validates :pokemon_id, :price, :happiness, numericality: {greater_than: 0 }


  belongs_to :pokemon
end
