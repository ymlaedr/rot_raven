defmodule GrpcEndpointTest do
  use ExUnit.Case
  doctest GrpcEndpoint

  test "greets the world" do
    assert GrpcEndpoint.hello() == :world
  end
end
