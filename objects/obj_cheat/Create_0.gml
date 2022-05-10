godIndex = 0;
godSequence = ds_list_create();

for (var i = 1; i < 6; i++) {
	var code = "iddqd";
	var char_code = string_ord_at(code, i);
	ds_list_add(godSequence, char_code);
}

choppersIndex = 0;
choppersSeq = ds_list_create();

for (var i = 1; i < 11; i++) {
	var code = "idchoppers";
	var char_code = string_ord_at(code, i);
	ds_list_add(choppersSeq, char_code);
}

beholdIndex = 0;
beholdSeq = ds_list_create();

for (var i = 1; i < 9; i++) {
	var code = "idbehold";
	var char_code = string_ord_at(code, i);
	ds_list_add(beholdSeq, char_code);
}

coolIndex = 0;
coolSeq = ds_list_create();

for (var i = 1; i < 6; i++) {
	var code = "idkfa";
	var char_code = string_ord_at(code, i);
	ds_list_add(coolSeq, char_code);
}

iddqd = false;
idbehold = false;
idkfa = false;
cheats = false;

lastKey = 0;