module Resources::LineLibrary
  LINES = [
    {
      id: 8746,
      name: "Gold",
    },
    {
      id: 8747,
      name: "Red",
    },
    {
      id: 8748,
      name: "Green",
    },
    {
      id: 8766,
      name: "Blue",
    }
  ]

  # Retrives all the MARTA train lines
  # 
  # @return [Hash]
  def lines
    return Lines
  end
end

