class Slot < ApplicationRecord
  belongs_to :coach, class_name: "User"
  belongs_to :student, class_name: "User", optional: true
end
