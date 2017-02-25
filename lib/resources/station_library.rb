module Resources::StationLibrary
  STATIONS = [
    {
      id: 114900,
      name: "WEST END STATION",
      latitude: 33.735899,
      longitude: -84.413542
    },
    {
      id: 123900,
      name: "OAKLAND CITY STATION",
      latitude: 33.717407,
      longitude: -84.426301
    },
    {
      id: 146900,
      name: "EAST POINT STATION",
      latitude: 33.67657,
      longitude: -84.44046
    },
    {
      id: 900686,
      name: "KENSINGTON STATION",
      latitude: 33.772472,
      longitude: -84.252236
    },
    {
      id: 901789,
      name: "ARTS CENTER STATION",
      latitude: 33.789283,
      longitude: -84.387125
    },
    {
      id: 903009,
      name: "DUNWOODY STATION",
      latitude: 33.920969,
      longitude: -84.344734
    },
    {
      id: 903164,
      name: "SANDY SPRINGS STATION",
      latitude: 33.93149,
      longitude: -84.350818
    },
    {
      id: 903165,
      name: "MEDICAL CENTER STATION",
      latitude: 33.910569,
      longitude: -84.351215
    },
    {
      id: 904519,
      name: "BANKHEAD STATION",
      latitude: 33.77206,
      longitude: -84.428677
    },
    {
      id: 904642,
      name: "ASHBY STATION - EAST SIDE",
      latitude: 33.756066,
      longitude: -84.417371
    },
    {
      id: 904800,
      name: "MIDTOWN STATION",
      latitude: 33.78111,
      longitude: -84.386697
    },
    {
      id: 905666,
      name: "LENOX STATION",
      latitude: 33.845245,
      longitude: -84.358006
    },
    {
      id: 905697,
      name: "BROOKHAVEN/OGLETHORPE STATION",
      latitude: 33.86025,
      longitude: -84.339147
    },
    {
      id: 906647,
      name: "AIRPORT STATION",
      latitude: 33.640553,
      longitude: -84.446198
    },
    {
      id: 907473,
      name: "NORTH AVE STATION",
      latitude: 33.77191,
      longitude: -84.38717
    },
    {
      id: 907842,
      name: "PEACHTREE CENTER STATION",
      latitude: 33.758082,
      longitude: -84.387595
    },
    {
      id: 907843,
      name: "GARNETT STATION",
      latitude: 33.748696,
      longitude: -84.395741
    },
    {
      id: 907844,
      name: "COLLEGE PARK STATION",
      latitude: 33.650282,
      longitude: -84.448612
    },
    {
      id: 907933,
      name: "HAMILTON E HOLMES STATION",
      latitude: 33.754553,
      longitude: -84.469302
    },
    {
      id: 908023,
      name: "WEST LAKE STATION",
      latitude: 33.753328,
      longitude: -84.445329
    },
    {
      id: 908055,
      name: "LINDBERGH CENTER STATION",
      latitude: 33.823492,
      longitude: -84.369324
    },
    {
      id: 908435,
      name: "DOME-GWCC-PHILIPS ARENA-CNN STATION",
      latitude: 33.756179,
      longitude: -84.397215
    },
    {
      id: 908436,
      name: "KING MEMORIAL STATION",
      latitude: 33.749951,
      longitude: -84.375675
    },
    {
      id: 908476,
      name: "EDGEWOOD-CANDLER PARK STATION",
      latitude: 33.761803,
      longitude: -84.340825
    },
    {
      id: 908480,
      name: "NORTH SPRINGS STATION",
      latitude: 33.944377,
      longitude: -84.357253
    },
    {
      id: 908516,
      name: "INDIAN CREEK STATION",
      latitude: 33.769893,
      longitude: -84.229874
    },
    {
      id: 908566,
      name: "EAST LAKE STATION",
      latitude: 33.765241,
      longitude: -84.312937
    },
    {
      id: 908603,
      name: "CHAMBLEE STATION",
      latitude: 33.887929,
      longitude: -84.305556
    },
    {
      id: 908618,
      name: "GEORGIA STATE STATION",
      latitude: 33.750161,
      longitude: -84.385915
    },
    {
      id: 908691,
      name: "AVONDALE STATION",
      latitude: 33.775214,
      longitude: -84.282466
    },
    {
      id: 908692,
      name: "INMAN PARK-REYNOLDSTOWN STATION",
      latitude: 33.757227,
      longitude: -84.353066
    },
    {
      id: 908706,
      name: "LAKEWOOD-FT MCPHERSON STATION",
      latitude: 33.700298,
      longitude: -84.428865
    },
    {
      id: 908718,
      name: "BUCKHEAD STATION",
      latitude: 33.84781,
      longitude: -84.367629
    },
    {
      id: 908862,
      name: "DORAVILLE STATION",
      latitude: 33.902411,
      longitude: -84.281166
    },
    {
      id: 908911,
      name: "CIVIC CENTER STATION",
      latitude: 33.766111,
      longitude: -84.387504
    },
    {
      id: 908958,
      name: "VINE CITY STATION",
      latitude: 33.756613,
      longitude: -84.403902
    },
    {
      id: 908976,
      name: "FIVE POINTS STATION",
      latitude: 33.753899,
      longitude: -84.39156
    },
    {
      id: 908700,
      name: "DECATUR STATION",
      latitude: 33.774681,
      longitude: -84.295319
    }
  ]

  # Retrives all the MARTA train stations
  # 
  # @return [Hash]
  def stations
    return STATIONS
  end
end

