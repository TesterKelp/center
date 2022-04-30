	
    		
    			
    			
    function AssertionBeforeInsertRow(s){
    	alert("ddfd");
    	var i = 1;
    	var o = document.getElementById("AssertionSource");
    	var c = document.getElementById("c5");
    	var newTR = o.cloneNode(true);
    	newTR.setAttribute("id", "no"); 
    	var i = s.parentNode.parentNode.rowIndex;
    	c.parentNode.insertBefore(newTR, s.parentNode.parentNode);
    	newTR.style.visibility="visible";
    }
    function AssertionAfterInsertRow(s){
    	var i = 1;
    	var o = document.getElementById("AssertionSource");
    	var c = document.getElementById("c5");
    	var newTR = o.cloneNode(true);
    	newTR.setAttribute("id", "no"); 
    	var i = s.parentNode.parentNode.rowIndex;
    	if (c.parentNode.lastChild == s.parentNode.parentNode) {
    		c.parentNode.appendChild(newTR);
    	} else {
    		c.parentNode.insertBefore(newTR, s.parentNode.parentNode.nextSibling);
    	}
    	newTR.style.visibility="visible";
    }	
    			
    function AssertionDeleteRow(row){
    	var i = row.parentNode.parentNode.rowIndex;
    	document.getElementById('Assertion').deleteRow(i);
    }				
    		

    
    
    
    function AssertionHeaderBeforeInsertRow(s){
    	alert("ddfd");
    	var i = 1;
    	var o = document.getElementById("AssertionHeaderSource");
    	var c = document.getElementById("c55");
    	var newTR = o.cloneNode(true);
    	newTR.setAttribute("id", "no"); 
    	var i = s.parentNode.parentNode.rowIndex;
    	c.parentNode.insertBefore(newTR, s.parentNode.parentNode);
    	newTR.style.visibility="visible";
    }
    
    
    function AssertionHeaderAfterInsertRow(s){
    	var i = 1;
    	var o = document.getElementById("AssertionHeaderSource");
    	var c = document.getElementById("c55");
    	var newTR = o.cloneNode(true);
    	newTR.setAttribute("id", "no"); 
    	var i = s.parentNode.parentNode.rowIndex;
    	if (c.parentNode.lastChild == s.parentNode.parentNode) {
    		c.parentNode.appendChild(newTR);
    	} else {
    		c.parentNode.insertBefore(newTR, s.parentNode.parentNode.nextSibling);
    	}
    	newTR.style.visibility="visible";
    }
    
    
    
    function AssertionHeaderDeleteRow(row){
    	var i = row.parentNode.parentNode.rowIndex;
    	document.getElementById('AssertionHeader').deleteRow(i);
    }
    
    
    
    			