#please install the gem via entering the following command in terminal:- gem install terminal-table
require "terminal-table"

#define method
def calculate_price
  puts "Please enter all the items purchased separated by a comma"
  #get user input and store it in a variable
  all_items = gets.chomp
  #remove white space from input and split it into an array
  all_items_arr = all_items.gsub(" ", "").split(",")
  #array of all valid items, will be used to check if items entered are valid or not
  valid_items_arr = ["milk", "bread", "apple", "banana"]

  #check if all items entered are valid or not
  for item in all_items_arr
    if valid_items_arr.include?(item)
      next
    else
      puts "please recheck the items purchased, one or more items entered is invalid"
      return
    end
  end
  # puts all_items_arr
  #make another array with unique elements from the previous step
  uniq_items_arr = all_items_arr.uniq
  #store the regular price of different items in a Ruby hash
  unit_price_hash = { "milk" => 3.97, "bread" => 2.17, "banana" => 0.99, "apple" => 0.89 }
  #store the special discounted price of different items in a Ruby hash
  sale_price_hash = { "milk" => ["price" => 5.00, "quantity" => 2], "bread" => ["price" => 6.00, "quantity" => 3] }

  #create an empty array to push quantity of each item from order (passed by user)
  quantity_of_each_item = []
  #create another empty array to push quantity, price and name of each item from order. Will be used to create the table via the "terminal-table" gem required on top
  fnl_price_qty_and_item_name = []
  #create a variable to store total price of all items excluding discount, use it to calculate savings
  fnl_price_qty_without_discnt = 0
  #create a variable to store total price of all items including discount
  total_price_of_all_items = 0

  #iterate over uniq_items_arr to calculate the count of each unique item from input
  uniq_items_arr.map { |i| quantity_of_each_item.push("#{i}: #{all_items_arr.count(i)}") }

  #iterate over quantity_of_each_item to extract values like item name, price and perform actions to calculate price based on availability of discount
  quantity_of_each_item.each do |item_with_quant|
    #create two previously mentioned variables (item_quantity and original_item_quantity, initially have same value. But, the former is mutated)
    item_name, item_quantity = item_with_quant.gsub(" ", "").split(":")
    #create variable
    original_item_quantity = item_with_quant.gsub(" ", "").split(":")[1].to_i
    #create variable to store price of each item (initiated with 0)
    total_price_of_each_item = 0
    #convert type from string to fixnum
    item_quantity = item_quantity.to_i
    #calculate without discount price
    fnl_price_qty_without_discnt += (item_quantity * unit_price_hash[item_name])

    #condition to check weather an item can be discounted based on sale price
    if sale_price_hash.keys.include?(item_name) && (sale_price_hash[item_name][0]["quantity"] <= item_quantity)
      min_qty_for_discnt = sale_price_hash[item_name][0]["quantity"]
      #implement a loop to calculated disounted price based on its quantity
      while item_quantity >= min_qty_for_discnt
        #mutate item quantity to break out of loop when condition fails
        item_quantity -= min_qty_for_discnt
        #add price based on discounted price
        total_price_of_each_item += sale_price_hash[item_name][0]["price"]
      end
    end
    #check if item quantity is present to add the non discounted price
    if item_quantity
      #add non discounted price to the variable
      total_price_of_each_item += item_quantity * unit_price_hash[item_name]
    end
    #updated total price of all item including discount
    total_price_of_all_items += total_price_of_each_item
    #populate the array to iterate over to generate table
    fnl_price_qty_and_item_name << [item_name.capitalize, original_item_quantity.to_i, "$#{total_price_of_each_item}"]
  end
  #create variable and assign the identifier of savings (calculate and round based on total of discounted and non discounted prices)
  savings = (fnl_price_qty_without_discnt - total_price_of_all_items).round(2)
  #create variable and iterate over to array to generate table
  table = Terminal::Table.new :rows => fnl_price_qty_and_item_name, :style => { :width => 40, :border_x => "-", :border_i => "-", :border_top => "-", :border_bottom => false, :border_y => "" }
  # print the details based on the requirements
  puts " Item          Quantity     Price"
  puts table
  puts
  puts " Total price : $#{total_price_of_all_items}"
  puts " You saved $#{savings} today."
end

#call the method with input/order
calculate_price
