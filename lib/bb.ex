defmodule BB do
  @moduledoc """
  `BB` is a program that performs task on my machine.
  """

  alias BB.SubCommand.{Clone, Help}

  @doc """
  `BB` main program.
  """
  def main(args)

  def main(["clone", repo]),
    do: Clone.run([repo]) |> print()

  def main(["help" | _]),
    do: Help.run() |> print()

  def main(_) do
    output = """
    error: invalid command

    #{Help.run() |> elem(0)}
    """

    {output, 1} |> print()
  end

  @spec print({output :: String.t(), status :: non_neg_integer()}) :: no_return()
  defp print({output, status}) do
    IO.puts(:stderr, output)
    System.halt(status)
  end
end
