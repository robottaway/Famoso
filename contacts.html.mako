<div class="second">
  <p class="Header2">Sales</p>
  <div align="center">
    <table width="640" border="0" class="contact_table">
      <tr>
        <td width="320" bgcolor="#F4FEED"><p align="center"><strong>Famoso Nut Company Sales</strong></p></td>
        <td width="320" bgcolor="#F4FEED"><p align="center"><strong>Phone (661) 325-9189</strong></p></td>
      </tr>
      <tr>
        <td width="320" bgcolor="#F4FEED"><p align="center"><strong>5100 California Ave. #208<br/>Bakersfield, CA 93309</strong></p></td>
        <td width="320" bgcolor="#F4FEED"><p align="center"><strong>Fax (661) 325-4135</strong></p></td>
      </tr>
      <tr>
      <td bgcolor="#F4FEED">
        <p align="center">Gary Cross</p>
        <p align="center"><a href="mailto:gary@famosonutsales.com">gary@famosonutsales.com</a></p>
      </td>
      <td bgcolor="#F4FEED">
        <p align="center">Wendi Haggard</p>
        <p align="center"><a href="mailto:wendi@famosonutsales.com">wendi@famosonutsales.com</a></p>
      </td>
      </tr>
    </table>
  </div>
  <p></p>
  <p class="Header2">Operations</p>
    <table width="640" height="125" align="center" class="contact_table">
    <tr>
        <td bgcolor="#F4FEED"><strong>Famoso Nut Company</strong></td>
        <td bgcolor="#F4FEED"><strong>Phone (661) 399-9697</strong></td>
    </tr>
    <tr>
        <td bgcolor="#F4FEED"><strong>32331 Famoso Road<br/>Mc Farland, CA 93250</strong></td>
        <td bgcolor="#F4FEED"><strong>Fax (661) 399-5942</strong></td>
    </tr>
    </table>
    <table width="640" height="325" border="0" align="center" class="contact_table">
    <tr>
      <td width="213" height="104" bgcolor="#F4FEED">
        <p align="center"><strong>Chad Derose</strong></p>
        <p align="center">Chief Operations Officer</p>
        <p align="center"><a href="mailto:chad@famosonut.com">chad@famosonut.com</a></p>
      </td>
      <td width="213" nowrap="nowrap" bgcolor="#F4FEED">
        <p align="center"><strong>Tom Antongiovanni</strong></p>
        <p align="center">Chief Financial Officer</p>
        <p align="center"><a href="mailto:tom@famosonut.com">tom@famosonut.com</a></p>
      </td>
      <td width="214" bgcolor="#F4FEED">
        <p align="center"><strong>Stephen Sangalli</strong></p>
        <p align="center">Director of Production</p>
        <p align="center"><a href="mailto:sangalli@famosonut.com">sangalli@famosonut.com</a></p>
      </td>
    </tr>
    <tr>
      <td nowrap="nowrap" bgcolor="#F4FEED">
        <p align="center"><strong>Production Manager</strong></p>
	    <p align="center">Dominique Camou</p>
	    <p align="center"><a href="mailto:dominique@famosonut.com">dominique@famosonut.com</a></p>
      </td>
      <td height="105" bgcolor="#F4FEED">
        <p align="center"><strong>Teresa Williams</strong></p>
        <p align="center">Grower Services</p>
        <p align="center"><a href="mailto:teresa@famosonut.com">teresa@famosonut.com</a></p>
      </td>
      <td bgcolor="#F4FEED">
        <p align="center"><strong>Anna Maria Bravo</strong></p>
        <p align="center">Office Administrator</p>
        <p align="center"><a href="mailto:anna@famosonut.com">anna@famosonut.com</a></p>
      </td>
    </tr>
    <tr>
      <td nowrap="nowrap" bgcolor="#F4FEED">
        <p align="center"><strong>Marysol Sanchez</strong></p>
        <p align="center">Shipping Logistics</p>
        <p align="center"><a href="mailto:marysol@famosonut.com">marysol@famosonut.com</a></p>
      </td>
      <td bgcolor="#F4FEED">
        <p align="center"><strong>David Delis</strong></p>
        <p align="center">Analyst</p>
        <p align="center"><a href="mailto:david@famosonut.com">david@famosonut.com</a></p>
      </td>
      <td bgcolor="#F4FEED">
        <p align="center"><strong>Nancy Olvera</strong></p>
        <p align="center">Accounts Payable</p>
        <p align="center"><a href="mailto:nancy@famosonut.com">nancy@famosonut.com</a></p>
      </td>
    </tr>
  </table>
  <p class="Header2">Location</p>
  <p class="Header2">32331 Famoso Road McFarland, CA 93250 • (661) 399-9697</p>
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
