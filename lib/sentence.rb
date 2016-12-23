class Sentence < ActiveRecord::Base
  def match?(guess)
    if self.sentence == guess
      true
    end
  end
end
