let btn = document.getElementsByClassName("btn");


btn.forEach(function(button){
	button.addEventListener("click",sendReq);
});

function sendReq(e){
	let oReq = new XMLHttpRequest();
	oReq.addEventListener("load", function(){
				
	})	
}
