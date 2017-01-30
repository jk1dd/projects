def card_validator(card_number)
  card_digits = card_number.split('').map(&:to_i)

  reversed_card_digits = card_digits.reverse

  double_card_digits = reversed_card_digits.each_with_index.map do |element, index|
    if index.odd?
      element * 2
    else
      element
    end
  end

  added_digits = double_card_digits.map { |e| e / 10 + e % 10 }
  total_number = added_digits.reduce(:+)

  if (total_number % 10).zero?
    puts 'The number is valid!'
  else
    puts 'The number is invalid!'
  end
end

puts card_validator("4929735477250543")
puts card_validator("5541808923795240")
puts card_validator("5541801923795240")
puts card_validator("342804633855673")
puts card_validator("342801633855673")
