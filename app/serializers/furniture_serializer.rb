class FurnitureSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :room, :store, :image, :user_id, :photo

  def photo
    #  rails_blob_path(object.photo, only_path: true) if object.photo.attached?
    url_for(object.photo) if object.photo.attached?
    
  end
end
