class Project < ApplicationRecord
    validates :title, presence: true
    validates :github_url, presence: true
    validates :description, presence: true
end
