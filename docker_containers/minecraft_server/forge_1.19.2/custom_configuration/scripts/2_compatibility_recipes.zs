// flour compatibility
craftingTable.addShapeless("wheat_flour_to_flour", <item:extradelight:flour>, [ <item:create:wheat_flour>]);
craftingTable.addShapeless("flour_to_wheat_flour", <item:create:wheat_flour>, [ <item:extradelight:flour>]);
//corn_kernels into corn_seeds compatibility
craftingTable.addShapeless("corn_kernels_to_corn_seeds", <item:extradelight:corn_seeds>, [ <item:culturaldelights:corn_kernels>]);
craftingTable.addShapeless("corn_seeds_to_corn_kernels", <item:culturaldelights:corn_kernels>, [ <item:extradelight:corn_seeds>]);
// sinew into sinew compatibility
//craftingTable.addShapeless("butchercraft_sinew_to_biomancy_mob_sinew", <item:biomancy:mob_sinew>, [ 
//<item:butchercraft:sinew>,<item:butchercraft:sinew>,
//<item:butchercraft:sinew>,<item:butchercraft:sinew>]);
//craftingTable.addShapeless("biomancy_mob_sinew_to_butchercraft_sinew", <item:butchercraft:sinew>*4, [ <item:biomancy:mob_sinew>]);
// fat into fat compatibility
craftingTable.addShapeless("fat_delight_to_butcher", <item:butchercraft:fat>, [ <item:delightful:animal_fat>]);
craftingTable.addShapeless("fat_butcher_to_delight", <item:delightful:animal_fat>, [ <item:butchercraft:fat>]);
//hoglin hide into hoglin hide
craftingTable.addShapeless("hoglin_hide_into_hoglin_hide_1", <item:mynethersdelight:hoglin_hide>, [ <item:cold_sweat:hoglin_hide>]);
craftingTable.addShapeless("hoglin_hide_into_hoglin_hide_2", <item:cold_sweat:hoglin_hide>, [ <item:mynethersdelight:hoglin_hide>]);
//butchercraft_soap_into_suplementaries_soap
craftingTable.addShapeless("butchercraft_soap_into_suplementaries_soap", <item:supplementaries:soap>, [<item:butchercraft:soap>]);
craftingTable.addShapeless("supplementaries_soap_into_butchercraft_soap", <item:butchercraft:soap>, [<item:supplementaries:soap>]);
//ash
craftingTable.addShapeless("supplementaries_into_weathering_ash", <item:immersive_weathering:ash_layer_block>, [<item:supplementaries:ash>]);
craftingTable.addShapeless("weathering_into_supplementaries_ash", <item:supplementaries:ash>, [<item:immersive_weathering:ash_layer_block>]);
//bear fur into hair and hair into fur
craftingTable.addShapeless("bear_hair_into_fur", <item:alexsmobs:bear_fur>, [<item:naturalist:bear_fur>,<item:naturalist:bear_fur>]);
craftingTable.addShapeless("bear_fur_into_hair", <item:naturalist:bear_fur>*2, [<item:alexsmobs:bear_fur>]);
//bread_slice
craftingTable.addShapeless("breadslice_to_breadslice1", <item:extradelight:bread_slice>, [<item:moredelight:bread_slice>]);
craftingTable.addShapeless("breadslice_to_breadslice2", <item:moredelight:bread_slice>, [<item:extradelight:bread_slice>]);
//dough
craftingTable.addShapeless("dough_to_wet_dough", <item:farmersdelight:wheat_dough>, [<item:create:dough>]);
craftingTable.addShapeless("wet_dough_to_dough", <item:create:dough>, [<item:farmersdelight:wheat_dough>]);
//electrum
//nugget
craftingTable.addShapeless("electrum_create_addition_to_electrum_oregonized_nugget", <item:oreganized:electrum_nugget>,     [<item:createaddition:electrum_nugget>  ]);
craftingTable.addShapeless("electrum_oregonized_to_electrum_create_addition_nugget", <item:createaddition:electrum_nugget>, [<item:oreganized:electrum_nugget>      ]);
//potato_slice into sliced_potato
craftingTable.addShapeless("sliced_potato_into_potato_slice", <item:casualness_delight:potato_slice>,     [<item:extradelight:sliced_potato>*4]);
craftingTable.addShapeless("potato_slice_into_sliced_potato", <item:extradelight:sliced_potato>*4,          [<item:casualness_delight:potato_slice>]);
//cactus flesh and cactus paddle
craftingTable.addShapeless("cactus_paddle_into_cactus_flesh", <item:delightful:cactus_flesh>,     [<item:extradelight:cactus>]);
craftingTable.addShapeless("cactus_flesh_into_cactus_paddle", <item:extradelight:cactus>,          [<item:delightful:cactus_flesh>]);
