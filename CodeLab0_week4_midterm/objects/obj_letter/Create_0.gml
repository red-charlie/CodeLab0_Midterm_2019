/// @description letter picking

// You can write your code in this editor


// testing letter -- current_letter = "A";
//using the letter list from our  class typing game and my homework from that week
#region alphabet

full_letter_list = ds_list_create();
	ds_list_add(full_letter_list,
	"A",
	"B",
	"C",
	"D",
	"E",
	"F",
	"G",
	"H",
	"I",
	"J",
	"K",
	"L",
	"M",
	"N",
	"O",
	"P",
	"Q",
	"R",
	"S",
	"T",
	"U",
	"V",
	"W",
	"X",
	"Y",
	"Z"
	);

#endregion

randomize();
//random seed

#region alphabet bag

letter_list = ds_list_create(); //listed letters of the alphaber
ds_list_copy(letter_list,
full_letter_list
);


#endregion

#region random position 

random_pos_letter = irandom(ds_list_size(letter_list)-1); // random 
current_letter = letter_list [|random_pos_letter]; //random part of list
#endregion