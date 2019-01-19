defmodule Fibonaci do
  @doc """
  Return sum of Fibonaci sequence
  """
  def sum(0), do: 0
  def sum(1), do: 1
  def sum(n), do: sum(n - 1) + sum(n - 2)

  @doc """
  Retuen Fibonaci sequence
  """
  def seq(0), do: [0]
  def seq(1), do: [0, 1]
  def seq(2), do: [0, 1, 2]
  def seq(n), do: seq(seq(2), n)

  def seq(list, n) do
    len = length(list)
    next = Enum.sum(Enum.slice(list, (len - 2)..len))

    if next < n do
      seq(list ++ [next], n)
    else
      list
    end
  end
end
