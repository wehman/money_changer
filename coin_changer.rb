def make_change(amount)

# make a coin and coin count hash 

  coins = { quarter: 25, dime: 10, nickel: 5, penny: 1 }
  coin_count = {}

	coins.each do |type, value|

		coin_count[type] = 0  # initialize the coins to 0

			while amount >= value
				amount = amount - value
				coin_count[type] += 1
			end

	end

  return coin_count

end
