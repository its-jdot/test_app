class Question < ApplicationRecord
    belongs_to :test
    has_many :choices

    def assign_score
        Question.count
    end

end
