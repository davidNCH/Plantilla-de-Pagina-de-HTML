var actual=1;
$(document).on("ready",main);

function main(){
	var intervalo =setInterval("runSlider()",3000);//segundos
}

function runSlider(){
	if(actual==$("#contenedorslider img").size()){//arreglo
		actual=0;
	}
	$("#contenedorslider").animate({
		marginleft:(-1*actual*$("#contenedorslider img").eq(0).width()) //buscamos img
	
	},700);
	actual++;
}