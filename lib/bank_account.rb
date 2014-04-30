class BankAccount 
	attr_reader :name, :balance #makes these readable from the controller
	attr_writer :number #allows you to update the parameter from the controller
	@@total_deposits = 0
	@last_deposit =  0
	def initialize(name, number, initial_balance)
		@name = name
		@number = number
		@balance = initial_balance
	end

	def deposit(amount)
		@last_deposit = amount
		@balance += amount

		@@total_deposits += amount #use @@total_deposits += 1 if you want to count each time a deposit is made
	end

	def withdraw(amount)
		@balance += -amount
		p 'Withdrawal amt: ' + amount.to_s
		p 'Balance after withdrawal: ' + @balance.to_s
	end

	def print_statement
		puts
		p 'Name: ' + @name
		p 'Number: ' + @number.to_s #.to_s convert to a string
		p 'Balance: $ ' + @balance.to_s #.to_s convert to a string
	end

	def print_last_deposit
		puts
		p 'Last deposit: $ ' + @last_deposit.to_s #.to_s convert to a string
		p 'Current Balance: $ ' + @balance.to_s #.to_s convert to a string
	end

	def print_all_deposits
		p 'Total value of deposits: ' + @@total_deposits.to_s
	end
end