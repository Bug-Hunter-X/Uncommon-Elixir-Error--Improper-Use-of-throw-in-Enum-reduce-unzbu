```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.reduce(list, 0, fn x, acc ->
    if x == 3 do
      throw(:error)
    else
      acc + x
    end
  end)
catch
  :error -> 0
  _ -> :other_error
end
```