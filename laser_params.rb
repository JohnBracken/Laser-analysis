#Module containing list of methods, mainly
#getters and setters, for laser class instances.

module LaserParams

    def set_laser(laser_hash)  
    	@laser_type = laser_hash["Laser_Type"]
        @wavelength = laser_hash["Wavelength(nm)"]
        @pump_source = laser_hash["Pump_Source"]  
        @applications = laser_hash["Applications"]   
        @photon_energy = (1240.0/@wavelength).round(2)
    end

    def get_laser
    	@laser_type
    end

    def get_wavelength
    	@wavelength
    end

    def get_energy
        @photon_energy
    end

    def get_pump_source
    	@pump_source
    end

    def get_applications
    	@applications
    end
    
end
