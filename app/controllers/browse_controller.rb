class BrowseController < ApplicationController
  skip_before_action :verify_authenticity_token

def browse
  # Finding users current account has already liked
  liked_account_ids = Like.where(account_id: current_account.id).map(&:liked_account_id)
  # Pushing current_account id to the array storing liked users' id
  liked_account_ids << current_account.id
  # Loading accounts that are not included in the liked_account_ids list
  @users = Account.where.not(id: liked_account_ids)
end

def approve
  account_id = params[:id]
  #user swipes right

  # Create like for user
  # Create new like, with liked user's id(required)
  new_like = Like.new(liked_account_id: account_id)
  # assign new_like's account_id as the current user id, Like class belongs to Account class
  new_like.account_id = current_account.id
  # Next, conditional for checking if they liked us back and displaying message
  if new_like.save
    # If saved, verify if liked_account_id liked our id (why are we using count method?)
    existing_like = Like.where(account_id: account_id, liked_account_id: current_account.id).count 
    @they_like_us = existing_like > 0
  end
end

def decline
  #user swipes left
end

end
