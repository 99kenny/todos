
window.onload = function(){ 
	let btn = document.getElementsByClassName("btn");
	for(let i = 0; i < btn.length; i++){
		btn[i].addEventListener("click",sendReq);
	}
	
	function sendReq(e){
		let xmlHttp = new XMLHttpRequest();
		let button = e.currentTarget;
		let id = button.id.split(' ')[0];
        let type = button.id.split(' ')[1];
        
		xmlHttp.onreadystatechange = function () {
  		if (xmlHttp.readyState === xmlHttp.DONE) {
    		if (xmlHttp.status === 200) {
                let element = button.parentElement;
                if(type == "TODO"){
                    let ul = document.querySelector('#doing ul');
                    ul.appendChild(element);
                    button.id=id + " DOING";
                }
                else if(type == "DOING"){
					let ul = document.querySelector('#done ul');
                    ul.appendChild(element);
                    button.remove();
                }                
    		} else {
      			// handle errors
    		}
  		}
	};
		xmlHttp.open( "GET", 'http://localhost:8080/todosapp/todos?id='+id+'&type='+ type);
		xmlHttp.send(null);
	}
}