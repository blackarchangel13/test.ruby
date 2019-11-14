require "pry"
# User Variables
@cart = []
@total = 0
@exit = false
#Array/List Variable
@groceries = [
{grocery_item: "Banannas", price: 1.0},
{grocery_item: "Cherries", price: 5.0},
{grocery_item: "Alvacadoes", price: 9.0},
{grocery_item: "Strawberries", price: 3.0},
{grocery_item: "Raspberries", price: 4.0}
]
# Fuction Area
def welcomeMessage 
  puts "Welcome to your Digital Grocery List"
  puts "To Exit Type 'Exit'"
  puts "To remove item from cart put a (-) before the procuct"
  puts "Please Select An Item Below"
  puts @groceries.map{|x| x[:grocery_item]}
  puts "What would you like to buy?"
end
def userChoice
  choice = gets.chomp
    if choice == "Banannas"
      @cart << {grocery_item: "Banannas", price: 1.0}
    elsif choice == "Cherries"
      @cart << {grocery_item: "Cherries", price: 5.0}
    elsif choice == "Alvacadoes"
      @cart << {grocery_item: "Alvacadoes", price: 9.0}
    elsif choice == "Strawberries" 
      @cart << {grocery_item: "Strawberries", price: 3.0}
    elsif choice == "Raspberries"
      @cart << {grocery_item: "Raspberries", price: 4.0}

    elsif choice == "Exit" 
      @exit = true
test = "Something new !!!"
  

    # elsif choice == "-Banannas" 
    # @cart.destroy {grocery_item: "Banannas", price: 1.0}

    #   @cart.reduce [grocery_item: "Banannas", price: 1.0]
      # loop through the cart
      # find the item with the grocery_item of bananas
      # if found then delete the item
    # elsif choice == "-Cherries"
    #   @cart.reduce [grocery_item: "Cherries", price: 5.0]
    # elsif choice == "-Alvacadoes"
    #   @cart.reduce [grocery_item: "Alvacadoes", price: 9.0]
    # elsif choice == "-Strawberries"
    #   @cart.reduce [grocery_item: "Strawberries", price: 3.0]
    # elsif choice == "-Raspberries"
    #   @cart.reduce [grocery_item: "Raspberries", price: 4.0]



    else 
      puts "You have to choose something!"
   end      
  puts "You Chose " + choice
end
def usersCart 
  puts "Your Cart Has "
  puts  @cart.map{|x| x[:grocery_item]}
  puts "The Total is:"
  @cart.each do |key|
    @total += key[:price]
  end
  puts @total.to_s
end
#Program
def runProgram
  welcomeMessage()
  while !@exit 
    userChoice()
  end
  usersCart()
end
#Runs The Program
runProgram()