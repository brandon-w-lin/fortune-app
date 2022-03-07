class MyExamplesController < ApplicationController
  def fortune_method
    fortunes = [
      "You will have a good day.",
      "Be careful out there.",
      "Play your lucky numbers!",
    ]
    lucky_number = []
    5.times do lucky_number << rand(60) end

    render html: "#{fortunes.sample} You should play numbers #{lucky_number}"
    # render html: "#{fortunes[rand(fortunes.length)]} You should play numbers #{lucky_number}"
  end

  def ninetynine_method
    str = ""
    # 97.times do {|i| str = "#{i} bottles of beer on the wall"}
    i = 99
    while i > 2
      str += "#{i} bottles of beer on the wall, #{i} bottles of beer, take one down pass it around, #{i - 1} bottles of beer on the wall"
      i -= 1
    end
    str += "2 bottles of beer on the wall, 2 bottles of beer, take one down pass it around, 1 bottle of beer on the wall"
    str += "1 bottles of beer on the wall, 2 bottles of beer, take one down pass it around, no more bottle of beer on the wall"

    render html: "#{str}"
  end
end
