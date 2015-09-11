class Audio < ActiveRecord::Base
  mount_uploader :attachment, AudioUploader
  validates :attachment, presence: true
end
