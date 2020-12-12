class Cat < ApplicationRecord
  mount_uploaders :images, ImageUploader
  enum sex: {male: 0, female: 1}
  enum status: {pause: 0,entry: 1, trial: 2,  decision: 3}
end
