class Like < ApplicationRecord
  belongs_to :account

  validate_uniqueness_of :liked_account_id, scope: :account_id
end
