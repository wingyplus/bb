defmodule BB.SubCommand do
  @callback run(args :: [String.t()]) :: {String.t(), status :: non_neg_integer()}
end
