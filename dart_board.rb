def scoreThrows(radiuses)
  score = 0
  if radiuses.count > 0 && radiuses.all? { |score| score <= 4 && score >= 0 }
    score += 100
  end
  if !radiuses.empty?
    radiuses.each do |throw|
      if throw >= 5 && throw <= 10
        score += 5
      elsif throw >= 0 && throw < 5 
        score += 10
      end
    end
  end
  score
end