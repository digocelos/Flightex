defmodule Flightex.Bookings.Booking do
  @keys [:complete_date, :local_origin, :local_destination, :user_id, :id]
  @enforce_keys @keys
  defstruct @keys

  def build(
        %NaiveDateTime{} = complete_date,
        local_origin,
        local_destination,
        user_id,
        id \\ UUID.uuid4()
      ) do
    {:ok,
     %__MODULE__{
       complete_date: complete_date,
       local_origin: local_origin,
       local_destination: local_destination,
       user_id: user_id,
       id: id
     }}
  end

  def build(_first, _id), do: {:error, "Invalid params"}
end
