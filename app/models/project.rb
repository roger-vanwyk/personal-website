class Project < ApplicationRecord
  #Image support via CarrierWave gem
  mount_uploader :picture, PictureUploader

  # A project's order_listed attribute entails were the project is on the order sequence when projects are displayed 
  # Default order is set by project's order_listed attribute 
  default_scope -> { order(order_listed: :asc) }

  # When project is created or edited, the projects after it have their order_listed attribute incremented by 1
  def Project.increment_order(project_number, project_id)
    Project.where("order_listed >= ? AND id != ?", project_number, project_id).update_all("order_listed = order_listed + 1")
  end

  # When a project is deleted, the projects after it have their order_listed attribute decremnted by 1
  def Project.decrement_order(project_number, project_id)
    Project.where("order_listed > ? AND id != ?", project_number, project_id).update_all("order_listed = order_listed - 1")
  end

end
