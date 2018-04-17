$(document).on('turbolinks:load', function() {
	$("select").change(function (e) {
		e.preventDefault();
		var type;
		var form;
		type = $("select option:selected");
		form = $(".railway_carriage");

		switch (type.val()) {
			case 'EconomyCarriage':
				$("div.top_seats").show();
				$("div.bottom_seats").show();
				$("div.side_top_seats").show();
				$("div.side_bottom_seats").show();
				$("div.seat_places").hide();
				break;
			case 'CoupeCarriage':
				$("div.top_seats").show();
				$("div.bottom_seats").show();
				$("div.side_top_seats").hide();
				$("div.side_bottom_seats").hide();
				$("div.seat_places").hide();
				break;
			case 'SwCarriage':
				$("div.top_seats").hide();			
				$("div.side_top_seats").hide();
				$("div.side_bottom_seats").hide();
				$("div.bottom_seats").show();
				$("div.seat_places").hide();				
				break;
			case 'SedentaryCarriage':
				$("div.top_seats").hide();
				$("div.bottom_seats").hide();
				$("div.side_top_seats").hide();
				$("div.side_bottom_seats").hide();
				$("div.seat_places").show();
				break;
		};
	});
});