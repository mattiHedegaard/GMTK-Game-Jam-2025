patients = (random_range(-10,70)+40)*FPS;
show_debug_message(patients)

firstClass = false;
firstClassChance = 10;
if (random_range(0,100) >= firstClassChance) ticketType = true;
firstClassMp = 1;
if (firstClass) firstClassMp = 3;

ticketValue = random_range(20,40)*firstClassMp;

//connections
belongsTo = noone;