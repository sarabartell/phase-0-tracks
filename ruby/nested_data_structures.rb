gym = {
  first_floor: {
    classes:{
      spin: "10am",
      vinyasa: "3pm"
    },
    rooms:[
      "Yoga",
      "Cycling"
    ]
  },
  second_floor: {
    classes:{
    },
    rooms:[
      "Womens lockers",
      "Mens lockers"
    ]
  },
  third_floor: {
    classes: {
      TRX: "12pm",
      body_conditioning: "4pm"
    },
    rooms:[
      "Main Studio",
      "Personal training"
    ]
  },
}

#list first class
puts gym[:first_floor][:rooms][1]
#list all 3rd floor classes
puts gym[:third_floor][:classes]
#list time of TRX
puts gym[:third_floor][:classes][:TRX]

## delete spin class
gym[:first_floor][:classes].delete(:spin)
puts gym

## new class on 2nd floor
gym[:second_floor][:classes] = "BBG: 11am"
puts gym[:second_floor][:classes]