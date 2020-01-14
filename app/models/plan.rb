class Plan < ApplicationRecord
  belongs_to :client, class_name: 'User', optional: true
  belongs_to :trainer, class_name: 'User', optional: true
end
