var offsetx = 46;
var offsety = 40;

if (room = rMenu){
	for (var i = 0; i < array_length(levelsCompleted); i++){
		if (levelsCompleted[i]){
			var curr = instance_create_layer(64+offsetx,offsety,"Managers",oReplayLevels);
			curr.level = i+1;
			offsetx += 46;
		}
	}
}