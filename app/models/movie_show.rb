class MovieShow < ApplicationRecord
	mount_uploader :video, VideoUploader
	resourcify
end
