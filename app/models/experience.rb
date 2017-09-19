class Experience < ApplicationRecord
  #Image support via CarrierWave gem
  mount_uploader :picture, ExperienceUploader

  # Default order is set by project's order_listed attribute 
  default_scope -> { order(order_listed: :asc) }

  # When a work experience entry is created or edited, the work experience entrys after it have their order_listed attribute incremented by 1
  def Experience.increment_order(experience_number, experience_id)
    Experience.where("order_listed >= ? AND id != ?", experience_number, experience_id).update_all("order_listed = order_listed + 1")
  end

  # When a work experience entry is deleted, the work experience entrys after it have their order_listed attribute decremnted by 1
  def Experience.decrement_order(experience_number, experience_id)
    Experience.where("order_listed > ? AND id != ?", experience_number, experience_id).update_all("order_listed = order_listed - 1")
  end
end
