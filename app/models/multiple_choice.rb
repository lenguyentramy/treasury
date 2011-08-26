class MultipleChoice < Interaction
 acts_as_citier
 serialize :anwers
def a_multiple_choice_question
    self.an_interaction
  end
  
end
