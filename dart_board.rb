def scoreThrows(radiuses)
  less_than_5_radiuses = []
  score = 0
  if !radiuses.empty?
    radiuses.each do |throw|
      if throw >= 5 && throw <= 10
        score += 5
        less_than_5_radiuses << "no bonus"
      elsif throw >= 0 && throw < 5 
        score += 10
      else
        less_than_5_radiuses << "no bonus"
      end
    end
    if less_than_5_radiuses.include?("no bonus")
      score
    else
      score += 100
    end
  end
    score
end
