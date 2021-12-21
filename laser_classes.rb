#Script containing laser class definitions.
#Each class uses the module of methods from laser_params.rb
require  "./laser_params.rb"

#Laser class with module methods, initialization
#and a summary method describing the laser.
class Laser

    include LaserParams

    def initialize
        puts "creating a new laser..."
    end

    def laser_summary
        puts "* Laser type: " + get_laser
        puts "* Wavelength: " + get_wavelength.to_s + " nm"
        puts "* Photon Energy: " + get_energy.to_s + " eV"
        puts "* Pump Source: " + get_pump_source
        puts "* Applications: " + get_applications
        puts "\n\n"
    end  
 
end

#Semiconductor laser class inherits from laser class.
class SemiconductorLaser < Laser

    def initialize
        puts "creating a new semiconductor laser specifically..."
    end

    def laser_summary  #Special version of laser summary method.
        puts "* Laser type: Semiconductor"
        puts "* Semiconductor: " + get_laser
        puts "* Wavelength: " + get_wavelength.to_s + " nm"
        puts "* Photon Energy: " + get_energy.to_s + " eV"
        puts "* Pump Source: " + get_pump_source
        puts "* Applications: " + get_applications
        puts "\n\n"
    end 
 
end


