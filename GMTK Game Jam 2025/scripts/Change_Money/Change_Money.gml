// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Change_Money(){
/// @arg add(bool)
/// @arg amount(int)
/// @arg where([x,y])
/// @arg firstclass(boool)

var add = argument[0];
var amount = argument[1];
var where = argument[2];
var firstClass = argument[3];

var mp;
var plusOrMinus;
var color;

if (add){
	mp = 1;
	plusOrMinus = "+";
	color = c_yellow;
}else {
	mp = -1;
	plusOrMinus = "-";
	color = c_purple;
}
if (firstClass) color = c_red;
var actualAmount = amount*mp;


var currMoney = instance_create_layer(where[0],where[1],"Passengers",oTextEffect);
currMoney.text = plusOrMinus+string(amount)+" $";
currMoney.color = color;
global.money += actualAmount;

}