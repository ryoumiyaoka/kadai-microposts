class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }


  has_many :likes
  has_many :lovers, through: :likes, source: :user
  
  def lovers
    @user = User.find(params[:id])
    @lovers = @user.lovers.page(params[:page])
  end
end


