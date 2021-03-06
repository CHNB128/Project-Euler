defmodule Problem2 do
  # Problem 2
  # Even Fibonacci numbers

  # Description:
  # Each new term in the Fibonacci sequence is generated by adding the previous
  # two terms. By starting with 1 and 2, the first 10 terms will be:
  # 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

  # TODO:
  # By considering the terms in the Fibonacci sequence whose values
  # do not exceed four million, find the sum of the even-valued terms.
  def solve(), do: solve(1)

  def solve(1) do
    Enum.sum(for i <- tl(Fibonaci.seq(4_000_000)), rem(i, 2) == 0, do: i)
  end

  def solve(2) do
    round(Enum.sum(Fibonaci.seq(4_000_000)) / 2)
  end
end
