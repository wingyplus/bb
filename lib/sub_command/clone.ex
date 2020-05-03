defmodule BB.SubCommand.Clone do
  @behaviour BB.SubCommand

  @impl true
  def run([repo], home_dir \\ &System.user_home!/0) do
    dst = Path.join([home_dir.(), "src", repo])

    {output, status} = System.cmd("git", ["clone", "https://" <> repo <> ".git", dst])
    {output, status}
  end
end
