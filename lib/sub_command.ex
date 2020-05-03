defmodule BB.SubCommand do
  @moduledoc """
  Behaviour that sub-command must follow.
  """

  @type result() :: {output :: String.t(), status :: non_neg_integer()}

  @doc """
  Run sub-command. Returns output string and status that is non-negative integer.
  """
  @callback run(args :: [String.t()]) :: result()
end
