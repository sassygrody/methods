require 'pry'

class Spiral
	def initialize(num)
		@num = num
		@grid = initialize_grid_shape
	end

	def initialize_grid_shape
		row  = []
		grid = []

		0.upto(@num).map { |_| grid << 0.upto(@num).map { |_| row << "*"} }

		@num.times  { row << "O" }
		@num.times  { grid << row.join("") }
		grid
	end

	def run
		spiral(@num)
	end

	def move_down(n, os)
		# down
		os.upto(os + n - 1).each do |x|
			print_grid(x, os)
		end
	end

	def move_right(n, os)
		# right
		(os + 1).upto(os + n - 1).each do |y|
			print_grid(os + n - 1, y)
		end
	end

	def move_up(n, os)
		# up
		(os + n - 2).downto(os).each do |x|
			print_grid(x, os + n - 1)
		end
	end

	def move_left(n, os)
		# left
		(os + n - 2).downto(os + 1).each do |y|
			print_grid(os, y)
		end
	end

	def spiral(n, os = 0)
		if n <= 0
			print_grid(os, os)
			return
		end

		move_down(n, os)
		move_right(n, os)
		move_up(n, os)
		move_left(n, os)

		spiral(n - 2, os + 1)
	end

	def print_grid(x = 0, y = 0)
		sleep 0.1
		system('clear')

		@grid[y][x] = "•"
		puts @grid
		p @grid
	end

	def print_coord(x, y)
		puts "(#{x}, #{y})"
	end
end

spiral = Spiral.new(9)
spiral.run
