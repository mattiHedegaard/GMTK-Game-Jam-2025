for (var i = 0; i < instance_number(oTrain); i++){
	var currTrain = instance_find(oTrain,i);
	if (currTrain.trainId == brakeId) {
		train = currTrain;
		train.brakeLever = self;
		break;
	}
}

color = colorArray[brakeId]

image_blend = color;