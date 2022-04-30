  function initialize() {
    var myLatlng = new google.maps.LatLng(54.685336,25.289247);
    var myOptions = {
      zoom: 16,
      center: myLatlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }

    var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

    var contentString = '<div id="content">'+
        '<h2>Lorem ipsum </h2>'+
        '<div id="bodyContent">'+
        '<p>321 Street Name, Lithuania, Vilnius <br>Phone: (000) 765-4321</p>'+
        '<p>Email: <a href="#">info@yoursitename.com</a></p>' +
        '</div>'+
        '</div>';
        
    var infowindow = new google.maps.InfoWindow({
        content: contentString
    });

    var marker = new google.maps.Marker({
        position: myLatlng,
        map: map,
        title: 'Lorem ipsum'
    });
    google.maps.event.addListener(marker, 'click', function() {
      infowindow.open(map,marker);
    });
  }
  google.maps.event.addDomListener(window, 'load', initialize);