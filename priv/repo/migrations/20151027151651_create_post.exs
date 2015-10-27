defmodule Crux.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :name, :string
      add :content, :string
      add :tags, :string

      timestamps
    end

  end
end
