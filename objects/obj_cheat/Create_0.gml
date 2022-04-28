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

iddqd = false;
cheats = false;

lastKey = 0;