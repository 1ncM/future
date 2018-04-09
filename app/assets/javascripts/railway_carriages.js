$(document).ready(function() {
	$("select").change(function () {
		var str;
		str = $("select option:selected");
		if (str.val() === 'EconomyCarriage') {
			alert('Ö');
		};
	});
});