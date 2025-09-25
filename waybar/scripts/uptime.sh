uptime -p | sed 's/up\s*//g' | sed 's/\s*days/d/g' | sed 's/\s*hours/h/g' | sed 's/\s*minutes/m/g' | sed 's/\s*day/d/g' | sed 's/\s*hour/h/g' | sed 's/\s*minute/m/g'
