defmodule ModuloToStr do
  @moduledoc """
  Module for creation of modulo to string functions.  The fizz
  function as well as the buzz function are modulo to string functions
  in the "FizzBuzz" problem.
  """

  defmacro defn(name, modulo) do
    func_name = name |> String.downcase |> String.to_atom
    quote do
      import unquote(__MODULE__)

      def unquote(func_name)(num) when is_number(num) do
        if rem(num, unquote(modulo)) == 0, do: unquote(name), else: num
      end

      def unquote(func_name)(x) when is_tuple(x) do
        first = elem(x, 0)
        second = elem(x, 1)

        {unquote(func_name)(first, second), second}
      end

      def unquote(func_name)(x) do
        x
      end

      def unquote(func_name)(num, x) when is_number(num) do
        if rem(x, unquote(modulo)) == 0 do
          unquote(func_name)(num)
        else
          num
        end
      end

      def unquote(func_name)(str, x) when is_bitstring(str) do
        if rem(x, unquote(modulo)) == 0 do
          str <> unquote(name)
        else
          str
        end
      end
    end
  end
end
