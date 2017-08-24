class Application < ApplicationRecord
  mount_uploader :resume, ResumeUploader
end
