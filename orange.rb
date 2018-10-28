Hello, world!

class OrangeTree

  def initialize
    @age = 0
    @orangeCount = 0
    @height = 0
    puts "Welcome to the orange-tree game. You can leave the game at any time by typing 'exit'. "
    puts "Would you like to plant an orange tree?"
    getFirstInput
  end

  def getFirstInput
    @firstInput = gets.downcase.chomp
    if @firstInput == 'yes'
      puts "Congratulations. You have planted an orange tree"
      plantTree
      puts "There are still no oranges. Would you like to wait a few more years?"
      waitFewYears?
    elsif @firstInput == 'no'
      puts "Goodbye"
      exit
    elsif @firstInput == "exit"
      puts "Goodbye"
      exit
    else
      puts "Please type 'yes', 'no', or 'exit'"
      getFirstInput
    end
  end

  def waitFewYears?
    @input = gets.downcase.chomp
    if @input == 'yes'
      puts "Here you go"
      @age = 4
      drawTree
      orangeGrowth
      countTheOranges
    elsif @input == 'no'
      puts "Gooybye"
      exit
    elsif @input == 'exit'
      puts "Goodbye"
      exit
    else
      puts "Please type 'yes', 'no', or 'exit'"
      waitFewYears?
    end
  end

  def waitOneYear
    puts "Do you want to wait another year?"
    @wantsToWait = gets.downcase.chomp
    if @wantsToWait == "yes"
      puts
      oneYearPasses
    elsif @wantsToWait == "no"
      puts "Goodbye"
      exit
    else
      puts "Please type 'yes' to continue, or 'no' to exit"
      waitOneYear
    end
  end

  def oneYearPasses
    @orangeCount = 0
    puts "Another year has passed"
    @age = @age + 1
    puts "The tree is #{@age.to_s} years old"
    @height = @height + 1
    puts "The tree is #{@height} ft tall"
    orangeGrowth
    countTheOranges
    pickAnOrange
    waitOneYear
  end

  def orangeGrowth
    @orangeCount = @orangeCount + @age - 3
    @tree["_"] = "🍊"
    puts @tree
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
          puts "Would you like another one?"
          @wantsApple = gets.downcase.chomp
          pickAnOrange
        else
          puts "There are #{@orangeCount} oranges left"
          puts "Would you like another one?"
          @wantsApple = gets.downcase.chomp
          pickAnOrange
        end
      elsif @wantsApple == "no"
        puts "Alright, hombre"
      else
        puts "Please enter 'yes' or 'no'"
      end
    end
  end

  def plantTree
    puts <<-'EOF'


                  \ }{
                   }{{
                   }}{
                   {{}
              , -=-~{ .-^- _
              ejm        `}
                    {

    EOF


  def drawTree
  @tree = <<-'EOF'
                \/ |    |/
              \/ / \||/  /_/___/_
               \/   |/ \/
          _\_\_\    |  /_____/_
                 \  | /          /
        __ _-----`  |{,-----------~
                  \ }{
                   }{{
                   }}{
                   {{}
             , -=-~{ .-^- _
        ejm        `}
                    {
      EOF
  end

  end



end

tree = OrangeTree.new
