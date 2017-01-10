class Resume < ApplicationRecord
  belongs_to :job
  belongs_to :user
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
 validates :name, presence: true # Make sure the owner's name is present.
 validates :attachment, presence: true
end
