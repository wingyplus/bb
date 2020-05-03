defmodule BB.SubCommand.Help do
  @behaviour BB.SubCommand

  @help """
  bb [command] [args]

  Available commands:

  clone - clone a git repository into GOPATH style.
  help - print help usage.
  """

  @impl true
  def run(_args \\ []),
    do: {@help, 0}
end
