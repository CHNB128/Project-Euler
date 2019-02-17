defmodule Problem1 do
  # Problem 1
  # Multiples of 3 and 5

  # Description:
  # If we list all the natural numbers below 10 that are multiples of 3 or 5,
  # we get 3, 5, 6 and 9. The sum of these multiples is 23.

  # TODO:
  # Find the sum of all the multiples of 3 or 5 below 1000.

  def solve() do
    Enum.sum(for i <- 1..1000, i < 1000, rem(i, 3) == 0 or rem(i, 5) == 0, do: i)
  end
end
