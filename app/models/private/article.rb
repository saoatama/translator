class Private::Article < ApplicationRecord
  belongs_to :user
  mount_uploader :path, FileUploader
end
