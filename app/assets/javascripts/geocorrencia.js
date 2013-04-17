/**
 * @author Arthur
 */

jQuery(function($){

  // Inserts Map on #map
  var map = L.map('map').setView([-22.9326, -43.4711], 10);
  L.tileLayer( 'http://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
    maxZoom: 18} ).addTo(map);

  
  // Add vector layer representing Rio de Janeiro City to map
  var geojson_feature =
  {
    "type": "Feature",
    "properties": { "ID": 4240, "NOMEUF": "RIO DE JANEIRO", "REGIAO": "SUDESTE", "CODMESO": "06", "NOMEMESO": "METROPOLITANA DO RIO DE JANEIRO", "CODMICRO": "18", "NOMEMICRO": "RIO DE JANEIRO", "NOME_1": "RIO DE JANEIRO", "NOME_2": "Rio de Janeiro", "CODIGO_UF": "33", "CODIGO_MUN": "3304557", "AREA_1997": 1261.080000 },
    "geometry": { "type": "MultiPolygon", "coordinates": [ [ [ [ -43.513947, -23.066244 ], [ -43.511276, -23.060308 ], [ -43.507999, -23.064972 ], [ -43.513947, -23.066244 ] ] ], [ [ [ -43.215694, -22.870138 ], [ -43.237083, -22.861584 ], [ -43.243031, -22.837051 ], [ -43.221527, -22.841110 ], [ -43.221806, -22.848225 ], [ -43.224724, -22.841282 ], [ -43.232475, -22.847511 ], [ -43.223278, -22.858000 ], [ -43.208752, -22.858307 ], [ -43.219803, -22.860615 ], [ -43.215694, -22.870138 ] ] ], [ [ [ -43.568417, -23.063124 ], [ -43.595360, -23.052158 ], [ -43.668137, -23.053709 ], [ -43.666721, -23.042418 ], [ -43.751640, -22.983109 ], [ -43.792221, -22.934124 ], [ -43.794609, -22.917336 ], [ -43.793056, -22.902735 ], [ -43.750973, -22.888023 ], [ -43.745277, -22.867907 ], [ -43.674110, -22.864349 ], [ -43.674053, -22.864342 ], [ -43.643913, -22.855852 ], [ -43.623474, -22.862577 ], [ -43.593113, -22.860014 ], [ -43.587860, -22.838251 ], [ -43.578278, -22.833017 ], [ -43.490002, -22.815638 ], [ -43.484806, -22.830172 ], [ -43.469639, -22.840508 ], [ -43.458221, -22.849134 ], [ -43.427944, -22.836706 ], [ -43.414501, -22.820736 ], [ -43.391361, -22.813856 ], [ -43.330196, -22.801695 ], [ -43.307110, -22.798037 ], [ -43.287804, -22.808027 ], [ -43.282944, -22.816271 ], [ -43.273529, -22.810663 ], [ -43.275417, -22.818489 ], [ -43.250336, -22.839943 ], [ -43.243752, -22.843637 ], [ -43.237614, -22.876814 ], [ -43.205750, -22.870678 ], [ -43.216583, -22.886164 ], [ -43.211555, -22.897507 ], [ -43.196693, -22.891891 ], [ -43.175194, -22.897585 ], [ -43.175087, -22.897724 ], [ -43.161919, -22.905264 ], [ -43.160500, -22.916044 ], [ -43.173222, -22.917175 ], [ -43.169388, -22.938620 ], [ -43.181805, -22.948084 ], [ -43.170948, -22.952284 ], [ -43.152306, -22.938883 ], [ -43.150948, -22.950825 ], [ -43.164249, -22.954620 ], [ -43.160114, -22.964806 ], [ -43.185444, -22.973335 ], [ -43.189667, -22.983055 ], [ -43.184387, -22.986893 ], [ -43.190441, -22.991774 ], [ -43.224918, -22.988968 ], [ -43.240498, -23.000889 ], [ -43.273083, -23.001556 ], [ -43.295750, -23.016888 ], [ -43.311275, -22.995693 ], [ -43.356506, -22.977892 ], [ -43.359539, -22.976700 ], [ -43.364418, -22.974779 ], [ -43.382694, -22.973717 ], [ -43.393970, -22.983320 ], [ -43.403000, -22.974735 ], [ -43.403030, -22.984947 ], [ -43.406086, -22.980637 ], [ -43.415058, -22.987341 ], [ -43.407280, -22.992064 ], [ -43.390778, -22.987999 ], [ -43.388748, -22.994473 ], [ -43.381248, -22.978205 ], [ -43.361507, -22.976835 ], [ -43.344528, -22.983881 ], [ -43.357750, -22.985340 ], [ -43.346554, -22.992001 ], [ -43.359943, -22.993454 ], [ -43.350498, -22.996286 ], [ -43.323471, -22.995947 ], [ -43.298725, -23.015131 ], [ -43.402721, -23.014450 ], [ -43.456470, -23.025373 ], [ -43.469280, -23.031660 ], [ -43.468636, -23.037632 ], [ -43.478306, -23.031799 ], [ -43.500084, -23.040928 ], [ -43.535389, -23.051212 ], [ -43.549110, -23.062140 ], [ -43.552059, -23.076059 ], [ -43.571945, -23.073511 ], [ -43.567802, -23.064348 ], [ -43.568417, -23.063124 ] ] ], [ [ [ -43.184860, -22.833246 ], [ -43.191387, -22.820156 ], [ -43.209526, -22.814878 ], [ -43.243637, -22.832418 ], [ -43.263554, -22.811665 ], [ -43.259083, -22.803881 ], [ -43.250137, -22.807953 ], [ -43.229000, -22.782789 ], [ -43.191639, -22.796169 ], [ -43.189445, -22.786509 ], [ -43.174747, -22.776609 ], [ -43.170918, -22.782700 ], [ -43.157696, -22.777946 ], [ -43.156750, -22.786421 ], [ -43.181583, -22.803251 ], [ -43.175083, -22.819794 ], [ -43.164280, -22.822607 ], [ -43.184860, -22.833246 ] ] ], [ [ [ -43.158054, -22.775404 ], [ -43.161110, -22.769831 ], [ -43.152164, -22.771799 ], [ -43.158054, -22.775404 ] ] ] ] }
  };
  var style =
  {
    "color": "#ff7800",
    "weight": 2,
    "opacity": 0
  };
  var rj_polygon = L.geoJson(geojson_feature, {
                               style: style
                             }).addTo(map);

  // Map Click
  function on_map_click(e)
  {
      alert("Desculpe, você só pode adicionar ocorrências na cidade do Rio de Janeiro");
  }
  // map.on('click', on_map_click);

  // RJ Polygon (vector layer) Click
  var already_clicked_flag = false;


  function on_rj_polygon_click(e)
  {
    var clicked_lat_lon = e.latlng;
    
    if (already_clicked_flag == false)
    {
      $('<div id="insert_here"></div>').insertAfter('body');
      already_clicked_flag = true;
    }
    else // If #insert_here div is already loaded on DOM
    {
      $('#insert_here').show();
    }

    // request to new.html.erb
    $.get('occurrences/new',
          { // json sent to previous url
            lat: clicked_lat_lon.lat,
            lon: clicked_lat_lon.lng
          },
          function(data) // the data is the response received. In this case, it's new.html.erb
          {
            // Inserts form into page
            $('#insert_here').html(data); //.html wipes the previous content and then inserts data

            // Everytime form is successfully submitted, hide form, update left panel and add marker to map
            $('#new_occurrence_form').on("ajax:success", function(event, data, status, xhr)
                  {
                    // Clear form
                    $(this).find('input[type="text"],input[type="textarea"]').val('');
                    $('#insert_here').hide();

                    // Inserts response partial into page. Inserts in left panel, before the first occurrence.
                    var json_data = $.parseJSON(data);
                    $('.left_panel').prepend(json_data.attachment_partial);

                    // Adds a marker(occurrence) to map
                    add_marker_to_map($.parseJSON(json_data.ocorrencia));
                  });
          },
          'html'
         );
  }
  rj_polygon.on('click', on_rj_polygon_click);



    // Extracts the lat and lon from the raw data
    function extracts_lat_lon(lat_lon)
    {
        var lat_lon_regex = /POINT \((.*)\)/;
        var lat_lon_array_with_space = lat_lon.match(lat_lon_regex); // puts the match into an array
        var lat_lon_array = lat_lon_array_with_space[1].split(/\s/); // removes the space between the two coordinates and puts the two results in an array (the first element is the raw data)
        var current_occurrence_lat = lat_lon_array[0];
        var current_occurrence_lon = lat_lon_array[1];

        return new L.LatLng(current_occurrence_lat, current_occurrence_lon);
    }


    function add_marker_to_map(occurrence)
    {
        var current_occurrence_lat_lon = extracts_lat_lon(occurrence.lat_lon);

        var occurrence_description = occurrence.type == null ? 'Tipo Não Escolhido' : occurrence.type.description;
        var occurrence_declarant_name = occurrence.declarant == null ? 'Não Especificado' : occurrence.declarant.name;

        // Adds a marker to map with it's popup, representing the occurrence
        var popup_text = '<b>' + occurrence_description + '</b><br/>'
            + occurrence.date + ' ' + '<i><small>' + occurrence.hour.description + '</small></i><br/>'
            + 'Declarante: ' + occurrence_declarant_name ;
        L.marker(current_occurrence_lat_lon).addTo(map).bindPopup(popup_text);
    }
   function add_occurrences_to_map(all_occurrences_json)
   {
       $.each($.parseJSON(all_occurrences_json.ocorrencias), function()
       {

           if (this.lat_lon != null)
           {
               add_marker_to_map(this);
           }

       });
   }
   var all_occurrences_json;
   function get_all_occurrences(){
       //
       var map_bounds = map.getBounds();

       // a get to occurrences path will go to index action
       $.get('occurrences',
             {
                //no json sending is needed
             },
             function(data) // the data is the response received
             {
               all_occurrences_json = $.parseJSON(data);
               add_occurrences_to_map(all_occurrences_json);
             },
             'html'
            );
   }
    get_all_occurrences();



    function refresh_side_panel()
    {
        var current_map_bounds = map.getBounds();

        // For each occurrence...
        $.each($.parseJSON(all_occurrences_json.ocorrencias), function() {

            if (this.lat_lon != null)
            {
                // Extracts the lat and lon from the raw data
                var current_occurrence_lat_lon = extracts_lat_lon(this.lat_lon);
                // If the occurrence is inside the current map view
                if( current_map_bounds.contains( current_occurrence_lat_lon ) )
                {
                    // Clear left panel
                    $('.left_panel').html('');

                    //todo: refactor -> send all occurrences on request at once, so that only one GET request is done
                    // Inserts occurrence in left panel
                    $.get('occurrences/show',
                        { // json sent to previous url
                            // id_o, cause rails didn't let me use id
                            id_o: this.id
                        },
                        function(data) // the data is the response received. In this case, it's _show.html.erb
                        {
                            var json_data = $.parseJSON(data);
                            $('.left_panel').prepend(json_data.attachment_partial);
                        },
                        'html'
                    );
                }

            }

        });
    }
    function on_map_move(e)
    {
        refresh_side_panel();
    }
    // On any movement of the map
    map.on('move', on_map_move);

});

