class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :likes, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many_attached :images

  def matches

    liked_account_ids = Like.where(account_id: self.id).map(&:liked_account_ids)
    puts liked_account_ids

    likes_me_account_ids = Like.where(liked_account_ids: self.id).map(&:account_id)
    puts likes_me_account_ids

    matched_ids = liked_account_ids.select{ |id|  likes_me_account_ids.include?(id)}
    puts matched_ids

  end
  
  
end