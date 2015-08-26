
jQuery(function($) {
    // Asynchronously Load the map API 
    var script = document.createElement('script');
    script.src = "http://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
    document.body.appendChild(script);
});

function initialize() {
    var map;
    var bounds = new google.maps.LatLngBounds();
    var mapOptions = {
        mapTypeId: 'roadmap'
    };
                    
    // Display a map on the page
    map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
    map.setTilt(45);
        
    // Multiple Markers
    var markers = [
        ['ATM 1, Dundee', 56.4611962,-2.9706048],
        ['ATM 2, Dundee', 56.463285,-2.9731235],
        ['ATM 3, Dundee', 56.4612505,-2.9737877],
        ['ATM 4, Dundee', 56.4621971,-2.9661633],
        ['ATM 5, Dundee', 56.4626629,-2.9840888]
    ];
                        
    // Info Window Content
    
    var infoWindowContent = [ 
        ['<div class="info_content">' +
        '<!--h3>ATM ID: 2783268 </h3-->' +
        '<!--p>Location: Dundee <br> ATM Status: Cash Low <br> <a class="cursor" data-toggle="modal" data-target="#video">Request Video</a></p--><iframe src="atm1.jsp" frameborder="0" height="280"></iframe><br><a class="cursor" data-toggle="modal" data-target="#video">Request Video</a>' + '</div>'],
        ['<div class="info_content">' +
         '<h3>ATM ID: 3789246 </h3>' +
         '<p>Location: Dundee <br> ATM Status: LOST COMMUNICATION</p>' + '</div>'],
        ['<div class="info_content">' +
         '<h3>ATM ID: 7893727 </h3>' +
         '<p>Location: Dundee <br> ATM Status: Cash Low</p>' + '</div>'],
         ['<div class="info_content">' +
          '<h3>ATM ID: 2537874 </h3>' +
          '<p>Location: Dundee <br> ATM Status: Receipt Paper Low</p>' + '</div>'],
          ['<div class="info_content">' +
           '<h3>ATM ID: 0983855 </h3>' +
           '<p>Location: Dundee <br> ATM Status: Maintenance Required</p>' + '</div>'],
    ];
        
    // Display multiple markers on a map
    var infoWindow = new google.maps.InfoWindow(), marker, i;
    
    // Loop through our array of markers & place each one on the map  
    for( i = 0; i < markers.length; i++ ) {
        var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
        bounds.extend(position);
        marker = new google.maps.Marker({
            position: position,
            map: map,
            title: markers[i][0]
        });
        
        // Allow each marker to have an info window    
        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infoWindow.setContent(infoWindowContent[i][0]);
                infoWindow.open(map, marker);
                
            }
        })(marker, i));

        // Automatically center the map fitting all markers on the screen
        map.fitBounds(bounds);
    }

    // Override our map zoom level once our fitBounds function runs (Make sure it only runs once)
    var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
        this.setZoom(14);
        google.maps.event.removeListener(boundsListener);
    });
    
    $('#atm1').on('click', function(event) {
    	event.preventDefault();
    	map.panTo(new google.maps.LatLng(56.4611962,-2.9706048));
    });
    
    $('#atm2').on('click', function(event) {
    	event.preventDefault();
    	map.panTo(new google.maps.LatLng(56.463285,-2.9731235));
    });
    
    $('#atm3').on('click', function(event) {
    	event.preventDefault();
    	map.panTo(new google.maps.LatLng(56.4612505,-2.9737877));
    });
    
    $('#atm4').on('click', function(event) {
    	event.preventDefault();
    	map.panTo(new google.maps.LatLng(56.4621971,-2.9661633));
    });
    
    $('#atm5').on('click', function(event) {
    	event.preventDefault();
    	map.panTo(new google.maps.LatLng(56.4626629,-2.9840888));
    });
    
    $('#vidlink').on('click', function(event) {
    	event.preventDefault();
    	window.location.href = "http://stackoverflow.com";
    });
    
}