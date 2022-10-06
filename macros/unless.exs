defmodule ControlFlow do
  defmacro unless(expression, do: block, else: another_block) do
    quote do
      if !unquote(expression), do: unquote(block), else: unquote(another_block)
    end
  end
end