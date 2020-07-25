# all_items_arr = "milk,milk, bread,banana,  bread,bread,bread, milk,apple".gsub(" ", "").split(",")
# uniq_items_arr = all_items_arr.uniq
# quantity_of_each_item = []
# uniq_items_arr.map { |i| quantity_of_each_item.push("#{i}: #{all_items_arr.count(i)}") }
# unit_price_hash = { "milk" => 3.97, "bread" => 2.17, "banana" => 0.99, "apple" => 0.89 }

# quantity_of_each_item.each do |item_with_quant|
#   item_name, item_quantity = item_with_quant.gsub(" ", "").split(":")
#   # puts unit_price_hash[item_name]
#   puts item_quantity
#   item_price = item_quantity.to_f * unit_price_hash[item_name]
#   puts item_price
# end

# 2

# all_items_arr = "milk,milk,milk,milk,milk,milk,milk,milk, bread,banana,  bread,bread,bread, milk,apple".gsub(" ", "").split(",")

# uniq_items_arr = all_items_arr.uniq

# quantity_of_each_item = []

# uniq_items_arr.map { |i| quantity_of_each_item.push("#{i}: #{all_items_arr.count(i)}") }

# unit_price_hash = { "milk" => 3.97, "bread" => 2.17, "banana" => 0.99, "apple" => 0.89 }

# sale_price_hash = { "milk" => ["price" => 5.00, "quantity" => 2], "bread" => ["price" => 6.00, "quantity" => 3] }

# quantity_of_each_item.each do |item_with_quant|
#   item_name, item_quantity = item_with_quant.gsub(" ", "").split(":")
#   total_price = 0
#   # puts unit_price_hash[item_name]
#   #puts item_quantity
#   if sale_price_hash.keys.include?(item_name) && (sale_price_hash[item_name][0]["quantity"] <= item_quantity.to_i)
#     min_qty_for_discnt = sale_price_hash[item_name][0]["quantity"]
#     temp_quantity = item_quantity.to_i
#     counter = 0
#     while temp_quantity >= min_qty_for_discnt
#       temp_quantity -= min_qty_for_discnt
#       total_price += sale_price_hash[item_name][0]["price"].to_i
#     end
#   end

#   if temp_quantity
#     total_price += temp_quantity * unit_price_hash[item_name]
#   end
#   puts total_price

#   # item_price = item_quantity.to_f * unit_price_hash[item_name]
#   # puts item_quantity
# end

# def price_calculate(input)
#   all_items_arr = input.gsub(" ", "").split(",")
#   uniq_items_arr = all_items_arr.uniq

#   quantity_of_each_item = []
#   fnl_price_qty_with_discnt = []
#   fnl_price_qty_without_discnt = []
#   total_price_of_all_items = []
#   total_price_of_each_item = 0

#   uniq_items_arr.map { |i| quantity_of_each_item.push("#{i}: #{all_items_arr.count(i)}") }

#   unit_price_hash = { "milk" => 3.97, "bread" => 2.17, "banana" => 0.99, "apple" => 0.89 }

#   sale_price_hash = { "milk" => ["price" => 5.00, "quantity" => 2], "bread" => ["price" => 6.00, "quantity" => 3] }

#   quantity_of_each_item.each do |item_with_quant|
#     item_name, item_quantity = item_with_quant.gsub(" ", "").split(":")

#     item_quantity = item_quantity.to_i
#     # puts unit_price_hash[item_name]
#     #puts item_quantity

#     if sale_price_hash.keys.include?(item_name) && (sale_price_hash[item_name][0]["quantity"] <= item_quantity)
#       min_qty_for_discnt = sale_price_hash[item_name][0]["quantity"]
#       # temp_quantity = item_quantity.to_i
#       counter = 0
#       while item_quantity >= min_qty_for_discnt
#         item_quantity -= min_qty_for_discnt
#         total_price_of_each_item += sale_price_hash[item_name][0]["price"].to_i
#       end
#     end

#     if item_quantity
#       total_price_of_each_item += item_quantity * unit_price_hash[item_name]
#     end
#     total_price_of_all_items << total_price_of_each_item
#     fnl_price_qty_with_discnt << "#{total_price_of_each_item}: #{item_name}"

#     # puts total_price_of_all_items

#     # item_price = item_quantity.to_f * unit_price_hash[item_name]
#     # puts item_quantity
#   end

#   puts fnl_price_qty_with_discnt
#   puts total_price_of_all_items
#   # return fnl_price_qty_with_discnt, total_price_of_all_items
# end

# price_calculate("milk,milk, bread,banana,bread,bread,bread,milk,apple")

# all_items_arr = "milk,milk,milk,milk,milk,milk,milk,milk, bread,banana,  bread,bread,bread, milk,apple".gsub(" ", "").split(",")

# uniq_items_arr = all_items_arr.uniq

# quantity_of_each_item = []

# uniq_items_arr.map { |i| quantity_of_each_item.push("#{i}: #{all_items_arr.count(i)}") }

# unit_price_hash = { "milk" => 3.97, "bread" => 2.17, "banana" => 0.99, "apple" => 0.89 }

# sale_price_hash = { "milk" => ["price" => 5.00, "quantity" => 2], "bread" => ["price" => 6.00, "quantity" => 3] }

# quantity_of_each_item.each do |item_with_quant|
#   item_name, item_quantity = item_with_quant.gsub(" ", "").split(":")
#   total_price = 0
#   # puts unit_price_hash[item_name]
#   #puts item_quantity
#   if sale_price_hash.keys.include?(item_name) && (sale_price_hash[item_name][0]["quantity"] <= item_quantity.to_i)
#     min_qty_for_discnt = sale_price_hash[item_name][0]["quantity"]
#     temp_quantity = item_quantity.to_i
#     counter = 0
#     while temp_quantity >= min_qty_for_discnt
#       temp_quantity -= min_qty_for_discnt
#       total_price += sale_price_hash[item_name][0]["price"].to_i
#     end
#   end

#   if temp_quantity
#     total_price += temp_quantity * unit_price_hash[item_name]
#   end
#   puts total_price

#   # item_price = item_quantity.to_f * unit_price_hash[item_name]
#   # puts item_quantity
# end
#3

# all_items_arr = "milk,milk, bread,banana,  bread,bread,bread, milk,apple".gsub(" ", "").split(",")
# uniq_items_arr = all_items_arr.uniq
# quantity_of_each_item = []
# uniq_items_arr.map { |i| quantity_of_each_item.push("#{i}: #{all_items_arr.count(i)}") }
# unit_price_hash = { "milk" => 3.97, "bread" => 2.17, "banana" => 0.99, "apple" => 0.89 }

# quantity_of_each_item.each do |item_with_quant|
#   item_name, item_quantity = item_with_quant.gsub(" ", "").split(":")
#   # puts unit_price_hash[item_name]
#   puts item_quantity
#   item_price = item_quantity.to_f * unit_price_hash[item_name]
#   puts item_price
# end

# 2

# all_items_arr = "milk,milk,milk,milk,milk,milk,milk,milk, bread,banana,  bread,bread,bread, milk,apple".gsub(" ", "").split(",")

# uniq_items_arr = all_items_arr.uniq

# quantity_of_each_item = []

# uniq_items_arr.map { |i| quantity_of_each_item.push("#{i}: #{all_items_arr.count(i)}") }

# unit_price_hash = { "milk" => 3.97, "bread" => 2.17, "banana" => 0.99, "apple" => 0.89 }

# sale_price_hash = { "milk" => ["price" => 5.00, "quantity" => 2], "bread" => ["price" => 6.00, "quantity" => 3] }

# quantity_of_each_item.each do |item_with_quant|
#   item_name, item_quantity = item_with_quant.gsub(" ", "").split(":")
#   total_price = 0
#   # puts unit_price_hash[item_name]
#   #puts item_quantity
#   if sale_price_hash.keys.include?(item_name) && (sale_price_hash[item_name][0]["quantity"] <= item_quantity.to_i)
#     min_qty_for_discnt = sale_price_hash[item_name][0]["quantity"]
#     temp_quantity = item_quantity.to_i
#     counter = 0
#     while temp_quantity >= min_qty_for_discnt
#       temp_quantity -= min_qty_for_discnt
#       total_price += sale_price_hash[item_name][0]["price"].to_i
#     end
#   end

#   if temp_quantity
#     total_price += temp_quantity * unit_price_hash[item_name]
#   end
#   puts total_price

#   # item_price = item_quantity.to_f * unit_price_hash[item_name]
#   # puts item_quantity
# end

# def price_calculate(input)
#   all_items_arr = input.gsub(" ", "").split(",")
#   uniq_items_arr = all_items_arr.uniq

#   quantity_of_each_item = []
#   fnl_price_qty_with_discnt = []
#   fnl_price_qty_without_discnt = []
#   total_price_of_all_items = []
#   total_price_of_each_item = 0

#   uniq_items_arr.map { |i| quantity_of_each_item.push("#{i}: #{all_items_arr.count(i)}") }

#   unit_price_hash = { "milk" => 3.97, "bread" => 2.17, "banana" => 0.99, "apple" => 0.89 }

#   sale_price_hash = { "milk" => ["price" => 5.00, "quantity" => 2], "bread" => ["price" => 6.00, "quantity" => 3] }

#   quantity_of_each_item.each do |item_with_quant|
#     item_name, item_quantity = item_with_quant.gsub(" ", "").split(":")

#     item_quantity = item_quantity.to_i
#     # puts unit_price_hash[item_name]
#     #puts item_quantity

#     if sale_price_hash.keys.include?(item_name) && (sale_price_hash[item_name][0]["quantity"] <= item_quantity)
#       min_qty_for_discnt = sale_price_hash[item_name][0]["quantity"]
#       # temp_quantity = item_quantity.to_i
#       counter = 0
#       while item_quantity >= min_qty_for_discnt
#         item_quantity -= min_qty_for_discnt
#         total_price_of_each_item += sale_price_hash[item_name][0]["price"].to_i
#       end
#     end

#     if item_quantity
#       total_price_of_each_item += item_quantity * unit_price_hash[item_name]
#     end
#     total_price_of_all_items << total_price_of_each_item
#     fnl_price_qty_with_discnt << "#{total_price_of_each_item}: #{item_name}"

#     # puts total_price_of_all_items

#     # item_price = item_quantity.to_f * unit_price_hash[item_name]
#     # puts item_quantity
#   end

#   puts fnl_price_qty_with_discnt
#   puts total_price_of_all_items
#   # return fnl_price_qty_with_discnt, total_price_of_all_items
# end

# price_calculate("milk,milk, bread,banana,bread,bread,bread,milk,apple")

# all_items_arr = "milk,milk,milk,milk,milk,milk,milk,milk, bread,banana,  bread,bread,bread, milk,apple".gsub(" ", "").split(",")

# uniq_items_arr = all_items_arr.uniq

# quantity_of_each_item = []

# uniq_items_arr.map { |i| quantity_of_each_item.push("#{i}: #{all_items_arr.count(i)}") }

# unit_price_hash = { "milk" => 3.97, "bread" => 2.17, "banana" => 0.99, "apple" => 0.89 }

# sale_price_hash = { "milk" => ["price" => 5.00, "quantity" => 2], "bread" => ["price" => 6.00, "quantity" => 3] }

# quantity_of_each_item.each do |item_with_quant|
#   item_name, item_quantity = item_with_quant.gsub(" ", "").split(":")
#   total_price = 0
#   # puts unit_price_hash[item_name]
#   #puts item_quantity
#   if sale_price_hash.keys.include?(item_name) && (sale_price_hash[item_name][0]["quantity"] <= item_quantity.to_i)
#     min_qty_for_discnt = sale_price_hash[item_name][0]["quantity"]
#     temp_quantity = item_quantity.to_i
#     counter = 0
#     while temp_quantity >= min_qty_for_discnt
#       temp_quantity -= min_qty_for_discnt
#       total_price += sale_price_hash[item_name][0]["price"].to_i
#     end
#   end

#   if temp_quantity
#     total_price += temp_quantity * unit_price_hash[item_name]
#   end
#   puts total_price

#   # item_price = item_quantity.to_f * unit_price_hash[item_name]
#   # puts item_quantity
# end

# all_items_arr = "milk,milk, bread,banana,bread,bread,bread,milk,apple".gsub(" ", "").split(",")
