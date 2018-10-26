class OrangeTree

  def initialize
    @age = 0
    @orangeCount = 0
    @height = 0
    puts "You planted a tree"
    height
    countTheOranges
    waitOneYear
  end

  def waitOneYear
    puts "Do you want to wait another year?"
    wantsToWait = gets.downcase.chomp
    if wantsToWait == "yes"
      puts
      oneYearPasses
    else
      puts "Goodbye"
      exit
    end
  end

  def height
    puts "The tree is #{@height} ft tall"
  end

  def oneYearPasses
    @orangeCount = 0
    puts "Another year has passed"
    @age = @age + 1
    puts "The tree is #{@age.to_s} years old"
    @height = @height + 1
    height
    orangeGrowth
    countTheOranges
    pickAnOrange
    waitOneYear
  end

  def orangeGrowth
    @orangeCount = @orangeCount + @age - 3
  end

  def countTheOranges
    if @orangeCount < 1
      puts "There are still no oranges"
    elsif @orangeCount == 1
      puts "There is one orange on the tree"
      puts "Would you like to eat an orange?"
      @wantsApple = gets.downcase.chomp
    else
    puts "There are #{@orangeCount} oranges on the tree"
    puts "Would you like to eat an orange?"
    @wantsApple = gets.downcase.chomp
    end
  end

  def pickAnOrange
    if @orangeCount > 0
      if @wantsApple == "yes"
        @orangeCount = @orangeCount - 1
        puts "That was delicious"
        if @orangeCount < 1
          puts "There are no more oranges left"
        elsif @orangeCount == 1
          puts "There is one more orange left"
        else
          puts "There are #{@orangeCount} oranges left"
          puts "Would you like another one?"
          @wantsApple = gets.downcase.chomp
          if @wantsApple == "yes"
            pickAnOrange
          end
        end
      else
        puts "Alright, hombre"
      end
    end
  end

end

tree = OrangeTree.new
