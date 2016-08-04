ExLua
=====

[![Hex.pm package](https://img.shields.io/hexpm/v/exlua.svg)](https://hex.pm/packages/exlua)
[![Hex.pm downloads](https://img.shields.io/hexpm/dt/exlua.svg)](https://hex.pm/packages/exlua)
[![Hex.pm license](https://img.shields.io/hexpm/l/exlua.svg)](https://unlicense.org/)
[![Travis CI build status](https://img.shields.io/travis/bendiken/exlua/master.svg)](https://travis-ci.org/bendiken/exlua)
[![Coveralls.io code coverage](https://img.shields.io/coveralls/bendiken/exlua/master.svg)](https://coveralls.io/github/bendiken/exlua)
[![Gratipay](https://img.shields.io/gratipay/user/bendiken.svg)](https://gratipay.com/~bendiken/)

Lua for Elixir.

## Examples

```elixir
  [42.0] = Lua.State.new |> Lua.eval!("return 6 * 7")
```

## Installation

Add `exlua` to your list of dependencies in your project's `mix.exs` file:

```elixir
defp deps do
  [{:exlua, "~> 0.1.0"}]
end
```

Alternatively, to pull in the dependency directly from a Git tag:

```elixir
defp deps do
  [{:exlua, github: "bendiken/exlua", tag: "0.1.0"}]
end
```

Alternatively, to pull in the dependency directly from a Git branch:

```elixir
defp deps do
  [{:exlua, github: "bendiken/exlua", branch: "master"}]
end
```
