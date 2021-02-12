defmodule Discuss.Repo.Migrations.AddTopicTable do
  use Ecto.Migration

  def change do
    create table("topics") do
      add :title, :string
      add :upvotes, :integer

      timestamps()
    end
  end
end
