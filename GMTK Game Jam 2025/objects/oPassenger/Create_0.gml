patients = (random_range(-10,70)+40)*FPS;

firstClass = false;
firstClassChance = 50;
if (random_range(0,100) >= firstClassChance){
	firstClass = true;
	show_debug_message("firstclass");
}
firstClassMp = 1;
if (firstClass) firstClassMp = 2;

ticketValue = random_range(20,40)*firstClassMp;
show_debug_message(ticketValue)

//connections
belongsTo = noone;