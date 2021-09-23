defmodule BB.SubCommand.Clone do
  @behaviour BB.SubCommand

  @impl true
  def run([repo], home_dir \\ &System.user_home!/0) do
    dst = Path.join(Path.split(home_dir.()) ++ ["src"] ++ Path.split(repo))

    System.cmd("git", ["clone", "https://" <> repo <> ".git", dst])
  end
end
