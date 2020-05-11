class Question < ApplicationRecord

    has_one :correct_answer
    has_many :incorrect_answers

end
