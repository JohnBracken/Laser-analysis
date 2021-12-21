#!/usr/bin/ruby

#Script to analyze info about different 
#kinds of lasers using OOP.

#Laser analysis.  Load laser parameters module
#Module contains setters and getters for laser class.
require "csv"
require  "./laser_classes.rb"

#New array of laser data.
laser_data = Array.new

#Write laser data from a csv file to array of hashes
CSV.foreach("Laser_types.csv", headers: true) do |row|
    laser_data.push(row.to_hash)
end


#Convert data to floats where appropriate (laser wavelength).
laser_data.each do |row|
    row["Wavelength(nm)"] = row["Wavelength(nm)"].to_f
end

#Create class instances of a laser for each row of laser data.
#For semiconductor lasers, create semiconductor subclass instances
#instead.
laser_data.each do |row|
    laser_example = Laser.new
    laser_example.set_laser(row)
    unless ['AlGaAs', 'GaN'].include?(laser_example.get_laser)
        laser_example.laser_summary
    else
        laser_example = SemiconductorLaser.new
        laser_example.set_laser(row)
        laser_example.laser_summary 
    end     
end

#Write the results to an output file using:
# ruby Laser_analysis.rb | cat >> laser_summary_file.md

