defmodule Discuss.Discussions.Topic do
  use Ecto.Schema
  import Ecto.Changeset

  schema "topics" do
    field :title, :string
    field :upvotes, :integer, default: 0

    timestamps()
  end

  @doc false
  def changeset(topic, attrs) do
    topic
    |> cast(attrs, [:title, :upvotes])
    |> validate_required([:title])
  end
end