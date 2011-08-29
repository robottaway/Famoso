<div class="second">
  <p class="Header2"><img src="img/Contacts_Office_Contacts.jpg" width="300" height="60" alt="Office Contacts" /></p>
  <div align="center">
    <table width="640" border="0" class="contact_table">
      <tr>
        <td width="320" bgcolor="#F4FEED"><p align="center"><strong>Famoso Nut Company</strong></p>
          <p align="center">32331 Famoso Road</p>
          <p align="center">McFarland, CA 93250</p>
          <p align="center">661.399.9697</p></td>
        <td width="320" bgcolor="#F4FEED"><p align="center"><strong>Famoso Nut Company Sales</strong></p>
          <p align="center">5100 California Ave. #208</p>
          <p align="center">Bakersfield, CA 93309</p>
          <p align="center">661.325.9189</p></td>
        </tr>
    </table>
  </div>
  <p></p>
  <p class="Header2"><img src="img/Contacts_Plant_Contacts.jpg" width="300" height="60" alt="Plant Contacts" /></p>
    <table width="640" height="325" border="0" align="center" class="contact_table">
    <tr>
      <td width="213" height="104" bgcolor="#F4FEED"><p align="center"><strong>Chief Operations Officer</strong></p>
        <p align="center">Chad Derose</p>
        <p align="center"><a href="mailto:Chad@Famosonut.com">Chad@Famosonut.com</a></p></td>
      <td width="213" nowrap="nowrap" bgcolor="#F4FEED"><p align="center"><strong>Chief Financial Officer</strong></p>
        <p align="center">Tom Antongiovanni</p>
        <p align="center"><a href="mailto:Tom@Famosonut.com">Tom@Famosonut.com</a></p></td>
      <td width="214" bgcolor="#F4FEED"><p align="center"><strong>Sales Manager</strong></p>
        <p align="center">Gary Cross</p>
        <p align="center"><a href="mailto:Nuts@BlueSkySales.Com">Nuts@BlueSkySales.Com</a></p></td>
    </tr>
    <tr>
      <td bgcolor="#F4FEED"><p align="center"><strong>Safety/Receiving</strong></p>
        <p align="center">Anna Maria Bravo</p>
        <p align="center"><a href="mailto:anna@Famosonut.com">Anna@Famosonut.com</a></p></td>
      <td nowrap="nowrap" bgcolor="#F4FEED"><p align="center"><strong>Director of Production</strong></p>
        <p align="center">Stephen Sangalli</p>
        <p align="center"><a href="mailto:Sangalli@Famosonut.com">Sangalli@Famosonut.com</a></p></td>
      <td bgcolor="#F4FEED"><p align="center"><strong>Analyst</strong></p>
        <p align="center">David Delis</p>
        <p align="center"><a href="mailto:David@Famosonut.com">David@Famosonut.com</a></p></td>
    </tr>
    <tr>
      <td height="105" bgcolor="#F4FEED"><p align="center"><strong>Grower Services</strong></p>
        <p align="center">Teresa Williams</p>
        <p align="center"><a href="mailto:teresa@famosonut.com">Teresa@Famosonut.com</a></p></td>
      <td nowrap="nowrap" bgcolor="#F4FEED"><p align="center"><strong>Shipping</strong></p>
        <p align="center">Marysol Briseno</p>
        <p align="center"><a href="mailto:Marysol@Famosonut.com">Marysol@Famosonut.com</a></p></td>
      <td nowrap="nowrap" bgcolor="#F4FEED"><p align="center"><strong>Production Manager</strong></p>
	    <p align="center">Dominique Camou</p>
	    <p align="center"><a href="mailto:Dominique@Famosonut.com">Dominique@Famosonut.com</a></p></td>
    </tr>
  </table>
  <p class="Header2"><img src="img/Contacts_Directions.jpg" width="300" height="60" alt="directions" /></p>
  <p class="Header2">32331 Famoso Road McFarland, CA 93250 • (661)399-9697</p>
  <div id="map">
		<div id="map_canvas" style="width:700px; height:700px; margin: 0;"></div>
  </div>
</div>

<%inherit file="_templates/site.mako" />
<%def name="styles()">
${parent.styles()}
</%def>

<%def name="javascript()">
${parent.javascript()}
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript">
$(document).ready(function() {
	var famoso_lat_lang = new google.maps.LatLng(35.602393, -119.192054);
    var myOptions = {
      zoom: 12,
      center: famoso_lat_lang,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	var marker = new google.maps.Marker({
	      position: famoso_lat_lang, 
	      map: map, 
	      title:"Famoso Nut Company, LLC"
	});
	var contentString = '<div id="content">'+
	    '<div id="siteNotice">'+
	    '</div>'+
	    '<h1 id="firstHeading" class="firstHeading">Famoso Nut Company, LLC</h1>'+
	    '<div id="bodyContent">'+
	    '<p>32331 Famoso Road<br/>McFarland, CA 93250<br/>(661) 399-9697</p>'+
	    '</div>'+
	    '</div>';
	var infowindow = new google.maps.InfoWindow({
	    content: contentString
	});
	google.maps.event.addListener(marker, 'click', function() {
	  infowindow.open(map,marker);
	});
})
</script>
</%def>
