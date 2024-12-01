defmodule Day1 do
  def part1 do
    # read line by line splitting the input on newlines
    # trim the last element because its empty
    pairs =
      File.read!("input.txt")
      |> String.split("\n")
      |> Enum.map(&String.split/1)
      |> Enum.reverse()
      |> tl()
      |> Enum.reverse()

    [first, second] =
      Enum.reduce(pairs, [[], []], fn pair, list ->
        [
          Enum.at(list, 0) ++ [String.to_integer(Enum.at(pair, 0))],
          Enum.at(list, 1) ++ [String.to_integer(Enum.at(pair, 1))]
        ]
      end)
      |> Enum.map(&Enum.sort/1)

    IO.inspect(first)
    IO.inspect(second)

    result =
      Enum.map(0..(length(pairs) - 1), fn x ->
        Kernel.abs(Enum.at(first, x) - Enum.at(second, x))
      end)
      |> Enum.sum()

    IO.inspect(result)
  end

  def part2 do
    # read line by line splitting the input on newlines
    # trim the last element because its empty
    pairs =
      File.read!("input.txt")
      |> String.split("\n")
      |> Enum.map(&String.split/1)
      |> Enum.reverse()
      |> tl()
      |> Enum.reverse()

    [first, second] =
      Enum.reduce(pairs, [[], []], fn pair, list ->
        [
          Enum.at(list, 0) ++ [String.to_integer(Enum.at(pair, 0))],
          Enum.at(list, 1) ++ [String.to_integer(Enum.at(pair, 1))]
        ]
      end)
      |> Enum.map(&Enum.sort/1)

    Enum.each(first, fn item -> nil end)

    IO.inspect(result)
  end
end
