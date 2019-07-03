class Question < ApplicationRecord
    include HasGravatar

    has_many :answers

    validates :email, length: { minimum: 5 }
    validates :body, length: { minimum: 1 }
end