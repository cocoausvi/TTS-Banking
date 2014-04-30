class MainController < ApplicationController
	require 'bank_account.rb' #I'm going to use this to here's where to get it; it looks in Library for this reference
	require 'checking_account.rb'
	def play
		ba = BankAccount.new('David', 123, 5000)
		p 'Name: ' + ba.name
		p 'Balance: ' + ba.balance.to_s
		ba.number = 999

		ba.deposit(50)
		ba.withdraw(10)
		ba.print_last_deposit
		ba.print_all_deposits
		ba.print_statement


		ba = BankAccount.new('Frank', 295, 10000)
		ba.deposit(500)
		ba.print_all_deposits
		ba.print_statement

		checking = CheckingAccount.new("Suzy", 395, 20000,500)
		checking.print_limit
		
		head :ok

		# This is a comment
	
	end
end