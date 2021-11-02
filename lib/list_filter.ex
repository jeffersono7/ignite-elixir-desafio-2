defmodule ListFilter do

  require Integer

  @doc """
    Retorna a quantidade de numeros impares.
  """
  @spec call(list()) :: number()
  def call(list) do
    list
    |> filter_by_numbers()
  end

  defp filter_by_numbers(list) do
    list
    |> Enum.map(&Integer.parse/1)
    |> Enum.map(fn elem ->
      case elem do
       {number, _} -> number
       _ -> :error
      end
    end)
    |> Enum.filter(&is_number/1)
    |> Enum.filter(&Integer.is_odd/1)
    |> Enum.count()
  end
end
