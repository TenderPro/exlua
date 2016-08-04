# This is free and unencumbered software released into the public domain.

defmodule LuaTest do
  use ExUnit.Case, async: true

  doctest Lua

  test "Lua.eval/2" do
    assert {:ok, [42.0]} = Lua.eval(Lua.State.new, "return 6 * 7")
    assert {:error, _} = Lua.eval(Lua.State.new, "foobar")
  end

  test "Lua.eval!/2" do
    assert [42.0] = Lua.eval!(Lua.State.new, "return 6 * 7")
    assert_raise Lua.Error, fn -> Lua.eval!(Lua.State.new, "foobar") end
  end

  test "Lua.eval_file/2" do
    assert {:ok, [42.0]} = Lua.eval_file(Lua.State.new, "test/scripts/answer.lua")
    assert {:error, _} = Lua.eval_file(Lua.State.new, "test/scripts/_enoent.lua")
  end

  test "Lua.eval_file!/2" do
    assert [42.0] = Lua.eval_file!(Lua.State.new, "test/scripts/answer.lua")
    assert_raise Lua.Error, fn -> Lua.eval_file!(Lua.State.new, "test/scripts/_enoent.lua") end
  end

  test "Lua.load_file/2" do
    assert {:ok, %Lua.State{}, %Lua.Chunk{}} = Lua.load_file(Lua.State.new, "test/scripts/hello.lua")
    assert {:error, _, _} = Lua.load_file(Lua.State.new, "test/scripts/_enoent.lua")
  end

  test "Lua.load_file!/2" do
    assert {%Lua.State{}, %Lua.Chunk{}} = Lua.load_file!(Lua.State.new, "test/scripts/hello.lua")
    assert_raise Lua.Error, fn -> Lua.load_file!(Lua.State.new, "test/scripts/_enoent.lua") end
  end

  test "Lua.gc!/1" do
    assert %Lua.State{} = Lua.gc(Lua.State.new)
  end
end
