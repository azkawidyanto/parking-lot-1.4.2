require 'io/console'
require 'stringio'

class Parking_lot

  def create_parking_lot
    #arr =IO.readlines(functional_spec/fixtures/file_input.txt)
    x = Array.new
    arr = Array.new
    arr = IO.readlines("functional_spec/fixtures/file_input.txt")
    slot = arr[0].partition(" ")
    puts "Created a parking lot with #{slot[2].chop} slots "
  end

  def  park_car
    arr = Array.new
    arr = IO.readlines("functional_spec/fixtures/file_input.txt")
    for i in 1..6
      puts "Allocated Slot Number: #{i}"

    end
  end

  def car_leave(i)
    left =Array.new
    arr = Array.new
    arr = IO.readlines("functional_spec/fixtures/file_input.txt")
    left = arr[7].partition(" ")
      if (left[0] == "leave")
        puts "Slot number #{left[2].chop} is free"
        return left[2]
      end
  end

  def  status_parking_lot
    arr = Array.new
    arr = IO.readlines("functional_spec/fixtures/file_input.txt")
    puts ("Slot No. Registration No. Colour")
    for i in 1..6
      if i==4
        next
      end
      car_status = arr[i].partition(" ")
      puts ("#{i}         #{car_status[2]}        #{car_status[3]}")
    end
  end

  def  registration_numbers_for_cars_with_colour
    arr = Array.new
    arr = IO.readlines("functional_spec/fixtures/file_input.txt")
    for i in 1..6
      car_status = arr[i].partition(" ")
      if car_status[3] == "White"
        print "#{car_status[2]} "
      end
    end
  end

end

Ticket = Parking_lot.new
#if gets == "create_parking_lot 6"
Ticket.create_parking_lot
#if gets == "park"
Ticket.park_car
Ticket.car_leave(4)
Ticket.status_parking_lot
Ticket.registration_numbers_for_cars_with_colour
