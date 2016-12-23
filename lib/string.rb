class String
  def match?(guess)
    if self == guess
      'it works'
    else
      "it works but no match!"
    end
  end
end
