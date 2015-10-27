defmodule Crux.PostTest do
  use Crux.ModelCase

  alias Crux.Post

  @valid_attrs %{content: "some content", name: "some content", tags: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Post.changeset(%Post{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Post.changeset(%Post{}, @invalid_attrs)
    refute changeset.valid?
  end
end
