defmodule BB do
  @moduledoc """
  `BB` is a program that performs task on my machine.
  """

  @help """
  bb [command] [args]

  Available commands:

  clone - clone a git repository into GOPATH style.
  help - print help usage.
  """

  @doc """
  `BB` main program.
  """
  def main(args, home_dir \\ &System.user_home!/0)

  def main(["clone", repo], home_dir) do
    dst = Path.join([home_dir.(), "src", repo])

    {output, status} = System.cmd("git", ["clone", "https://" <> repo <> ".git", dst])
    IO.puts(:stderr, output)
    System.stop(status)
  end

  def main(["help" | _], _) do
    IO.puts(:stderr, @help)
  end

  def main(_, _) do
    IO.puts(:stderr, "error: invalid command\n")
    main(["help"])
    System.stop(1)
  end
end
