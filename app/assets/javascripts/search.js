$(document).on('turbolinks:load', function() {
	$('.search_form').submit(function() {
		let first_station;
		let last_station;

		first_station = $(this).find('#search_first_station_id');
		last_station = $(this).find('#search_last_station_id');
		
		if (first_station.val() == last_station.val()) {
			alert('Выберите конечную станцию');
			return false;
		};
	});
});