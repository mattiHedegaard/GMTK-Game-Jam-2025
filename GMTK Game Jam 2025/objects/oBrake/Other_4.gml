for (var i = 0; i < instance_number(oTrain); i++){
	var currTrain = instance_find(oTrain,i);
	if (currTrain.trainId == brakeId) {
		train = currTrain;
		train.brakeLever = self;
		color = currTrain.color;
		image_blend = color;
		break;
	}
}