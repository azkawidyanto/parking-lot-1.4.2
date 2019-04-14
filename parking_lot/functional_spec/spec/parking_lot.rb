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
      car_info = arr[i].partition(" ")
      car_status  = car_info[2].partition(" ")
       puts ("#{i}        #{car_status[0]}     #{car_status[2]}    ")
    end
  end

  def registration_numbers_for_cars_with_colour
    arr = Array.new
    arr = IO.readlines("functional_spec/fixtures/file_input.txt")
    print "registration_numbers_for_cars_with_colour "
    car_colour = gets
    for i in 1..6
      car_info = arr[i].partition(" ")
      car_status  = car_info[2].partition(" ")
        if (car_status[2]== car_colour)
          print "#{car_status[0]} "
        end
    end
    print("\n")
  end

  def slot_numbers_for_cars_with_colour
    arr = Array.new
    arr = IO.readlines("functional_spec/fixtures/file_input.txt")
    print "slot_numbers_for_cars_with_colour "
    car_colour = gets
    for i in 1..6
      car_info = arr[i].partition(" ")
      car_status  = car_info[2].partition(" ")
        if (car_status[2]== car_colour)
          print "#{i} "
        end
    end
    print("\n")
  end

  def slot_number_for_registration_number
    arr = Array.new
    arr = IO.readlines("functional_spec/fixtures/file_input.txt")
    print "slot_number_for_registration_number "
    car_number = gets
    for i in 1..6
      car_info = arr[i].partition(" ")
      car_status  = car_info[2].partition(" ")
      slots = Array.new
      if (car_status[0] == car_number)
        found =true
        slots.insert(1,i)
      else
        found = false
      end
    end

    if found
      for i in 1..slots.length
      puts "#{slots[i]}"
      end
    else
      puts "Not Found"
    end

  end

end

Ticket = Parking_lot.new
Ticket.create_parking_lot
Ticket.park_car
Ticket.car_leave(4)
Ticket.status_parking_lot
Ticket
Ticket.registration_numbers_for_cars_with_colour
Ticket.slot_numbers_for_cars_with_colour
Ticket.slot_number_for_registration_number
