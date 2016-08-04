# This is free and unencumbered software released into the public domain.

defmodule Lua do
  alias Lua.{Error, State}

  @doc "Evaluates a Lua code snippet."
  def eval(%State{luerl: state}, code) do
    :luerl.eval(code, state)
  end

  @doc "Evaluates a Lua code snippet."
  def eval!(%State{luerl: state}, code) do
    case :luerl.eval(code, state) do
      {:ok, result}    -> result
      {:error, reason} -> raise Error, reason: reason, message: inspect(reason)
    end
  end

  @doc "Evaluates a Lua file."
  def eval_file(%State{luerl: state}, path) do
    :luerl.evalfile(path, state)
  end

  @doc "Evaluates a Lua file."
  def eval_file!(%State{luerl: state}, path) do
    case :luerl.evalfile(path, state) do
      {:ok, result}    -> result
      {:error, reason} -> raise Error, reason: reason, message: inspect(reason)
    end
  end
end
