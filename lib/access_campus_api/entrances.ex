defmodule AccessCampusApi.Entrances do
  @moduledoc """
  The Entrances context.
  """

  import Ecto.Query, warn: false
  alias AccessCampusApi.Repo

  alias AccessCampusApi.Entrances.Campus
  alias AccessCampusApi.Entrances.Building
  alias AccessCampusApi.Entrances.Entrance

  @doc """
  Returns the list of campuses.

  ## Examples

      iex> list_campuses()
      [%Campus{}, ...]

  """
  def list_campuses do
    Repo.all(Campus)
  end

  @doc """
  Gets a single campus.

  Raises `Ecto.NoResultsError` if the Campus does not exist.

  ## Examples

      iex> get_campus!(123)
      %Campus{}

      iex> get_campus!(456)
      ** (Ecto.NoResultsError)

  """
  # def get_campus!(id), do: Repo.get!(Campus, id)
  def get_campus!(id) do
     Repo.get!(Campus, id)
  end 
  @doc """
  Creates a campus.

  ## Examples

      iex> create_campus(%{field: value})
      {:ok, %Campus{}}

      iex> create_campus(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_campus(attrs \\ %{}) do
    %Campus{}
    |> Campus.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a campus.

  ## Examples

      iex> update_campus(campus, %{field: new_value})
      {:ok, %Campus{}}

      iex> update_campus(campus, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_campus(%Campus{} = campus, attrs) do
    campus
    |> Campus.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a campus.

  ## Examples

      iex> delete_campus(campus)
      {:ok, %Campus{}}

      iex> delete_campus(campus)
      {:error, %Ecto.Changeset{}}

  """
  def delete_campus(%Campus{} = campus) do
    Repo.delete(campus)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking campus changes.

  ## Examples

      iex> change_campus(campus)
      %Ecto.Changeset{source: %Campus{}}

  """
  def change_campus(%Campus{} = campus) do
    Campus.changeset(campus, %{})
  end

  @doc """
  Returns the list of buildings.

  ## Examples

      iex> list_buildings()
      [%Building{}, ...]

  """
  def list_buildings do
    Repo.all(Building)
  end

  @doc """
  Gets a single building.

  Raises `Ecto.NoResultsError` if the Building does not exist.

  ## Examples

      iex> get_building!(123)
      %Building{}

      iex> get_building!(456)
      ** (Ecto.NoResultsError)

  """
  def get_building!(id), do: Repo.get!(Building, id)

  @doc """
  Creates a building.

  ## Examples

      iex> create_building(%{field: value})
      {:ok, %Building{}}

      iex> create_building(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_building(attrs \\ %{}) do
    %Building{}
    |> Building.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a building.

  ## Examples

      iex> update_building(building, %{field: new_value})
      {:ok, %Building{}}

      iex> update_building(building, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_building(%Building{} = building, attrs) do
    building
    |> Building.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a building.

  ## Examples

      iex> delete_building(building)
      {:ok, %Building{}}

      iex> delete_building(building)
      {:error, %Ecto.Changeset{}}

  """
  def delete_building(%Building{} = building) do
    Repo.delete(building)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking building changes.

  ## Examples

      iex> change_building(building)
      %Ecto.Changeset{source: %Building{}}

  """
  def change_building(%Building{} = building) do
    Building.changeset(building, %{})
  end

  @doc """
  Returns the list of entrances.

  ## Examples

      iex> list_entrances()
      [%Entrance{}, ...]

  """
  def list_entrances do
    Repo.all(Entrance)
  end

  @doc """
  Gets a single entrance.

  Raises `Ecto.NoResultsError` if the Entrance does not exist.

  ## Examples

      iex> get_entrance!(123)
      %Entrance{}

      iex> get_entrance!(456)
      ** (Ecto.NoResultsError)

  """
  def get_entrance!(id), do: Repo.get!(Entrance, id)

  @doc """
  Creates a entrance.

  ## Examples

      iex> create_entrance(%{field: value})
      {:ok, %Entrance{}}

      iex> create_entrance(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_entrance(attrs \\ %{}) do
    %Entrance{}
    |> Entrance.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a entrance.

  ## Examples

      iex> update_entrance(entrance, %{field: new_value})
      {:ok, %Entrance{}}

      iex> update_entrance(entrance, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_entrance(%Entrance{} = entrance, attrs) do
    entrance
    |> Entrance.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a entrance.

  ## Examples

      iex> delete_entrance(entrance)
      {:ok, %Entrance{}}

      iex> delete_entrance(entrance)
      {:error, %Ecto.Changeset{}}

  """
  def delete_entrance(%Entrance{} = entrance) do
    Repo.delete(entrance)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking entrance changes.

  ## Examples

      iex> change_entrance(entrance)
      %Ecto.Changeset{source: %Entrance{}}

  """
  def change_entrance(%Entrance{} = entrance) do
    Entrance.changeset(entrance, %{})
  end
end
