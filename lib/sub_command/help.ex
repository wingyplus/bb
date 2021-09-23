defmodule BB.SubCommand.Help do
  @behaviour BB.SubCommand

  @help """
  bb [command] [args]

  Available commands:

  clone - Clone source code by specific repo. The source code will be clone to `$HOME/src`.
  help - Print help usage.
  """

  @impl true
  def run(_args \\ []),
    do: {@help, 0}
end
