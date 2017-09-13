class BoggleBoard
  def initialize
    @spaces = Array.new(16, "_")
    @alphabet = ('A'..'Z').to_a
    @dice = Array.new([
      "AAEEGN",
      "ELRTTY",
      "AOOTTW",
      "ABBJOO",
      "EHRTVW",
      "CIMOTU",
      "DISTTY",
      "EIOSST",
      "DELRVY",
      "ACHOPS",
      "HIMNQU",
      "EEINSU",
      "EEGHNW",
      "AFFKPS",
      "HLNNRZ",
      "DEILRX"
      ])
  end


  def shake!
    # @spaces.map! do |space|
    #   space = @alphabet.shuffle.take(1)
    # end
  #
    output_string = String.new
    die_face = Array.new

    i = 0 #setting an initial value of i
    while i < 16 #checks if i is less then 16
      die_face << @dice[i].split('').sample(1) #selecting first die, spliting each die into each letter and then taking one sample
      i = i + 1
    end

    letter_array = die_face.shuffle

    4.times do
      output_string << letter_array.shift(4).join('  ')+ " \n"
      # output_string.gsub!('Q ','Qu')
    end

    output_string

  end

#split - checks until it hits the thing in the quote marks. so if there is a space. it will grab everything before it hits the space.


  # def shake!
  #   #take spaces
  #   #replace them with random letters
  #   #spit it into our board
  #   #call the shake method without Boggleboard class
  #   #could use MAP
  #   alphabet_array = String.new
  #
  #   boggles = @spaces.map! {|x| @alphabet.sample}
  #
  #   4.times do
  #     alphabet_array << boggles.shift(4).join(" ")+ "\n"
  #   end
  #   alphabet_array
  # end




  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts

  def to_s
    #a new string to the output
    output_string = String.new

    letter_array = @spaces
    #
    4.times do
      output_string << letter_array.shift(4).join(" ")+ "\n"
    end
    #
    # output_string

    # output_string = String.new
    #
    # output_string = @spaces[0..3].join('') + "\n"
    # output_string = output_string + @spaces[4..7].join('') + "\n"
    # output_string = output_string + @spaces[8..11].join('') + "\n"
    # output_string = output_string + @spaces[12..15].join('') + "\n"
    #
    # i = 0
    # j = 3
    #
    # while j < 16
    #   output_string << @alphabet[i..j].join('') + "\n"
    #   i = i + 4
    #   j = j + 4
    # end

    # i = 0
    #
    # 4.times do
    #   j = i + 3
    #   output_string = output_string + @alphabet[i..j].join(' ') + "\n"
    #   i = j + 1
    # end

    puts output_string
  end

end

boogle = BoggleBoard.new
puts boogle.shake!

# boogle.shake!
# puts boogle



# #
# # # puts boogle.to_s
# # # puts boogle.to_s
# puts boogle.to_s
