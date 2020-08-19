class BrowseController < ApplicationController

def browse
  @users = Account.where.not(id: current_account.id)
end

def approve
  #user swipes right
  account_id = params[:id]
  # logger.debug "User id for matching is #{params[:id]}"
  # First we create a new like, this requires the liked user's id
  new_like = Like.new(liked_account_id: account_id)
  # assign the new like account id as the current user id, remember that the like class belongs to account class
  new_like.account_id = current_account.id
  # Next comes a conditional for displaying a message in case the liked_user also liked us back
  if new_like.save
    # If saved, look for said id and check if they have liked our id (why are we using count method?)
    existing_like = Like.where(account_id: account_id, liked_account_id: current_account.id).count 

  else

  end
end

def decline
  #user swipes left
end

end
