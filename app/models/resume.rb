class Resume < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  belongs_to :user
  belongs_to :job
  validates :content, presence: true
  validates :attachment, presence: true
end
