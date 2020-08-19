class BrowseController < ApplicationController

def browse
  @users = Account.where.not(id: current_account.id)
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
