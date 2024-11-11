import mods.jeitweaker.Jei;
Jei.addIngredient(<item:minecraft:beetroot_soup>.withTag({display: {Name: "{\"text\":\"Solnik\",\"italic\":false}"},CustomModelData: 21370,}));
Jei.addIngredient(<item:tconstruct:meat_soup>.withTag({display: {Name: "{\"text\":\"Blood Soup\",\"italic\":false,\"color\":\"red\"}"},}));

//craftingTable.remove();
//craftingTable.remove();

//hide unused ad astra stuff
Jei.hideIngredient(<item:ad_astra:oxygen_loader>);
Jei.hideIngredient(<item:ad_astra:water_pump>);
Jei.hideIngredient(<item:ad_astra:fluid_pipe_duct>);
Jei.hideIngredient(<item:ad_astra:desh_fluid_pipe>);
Jei.hideIngredient(<item:ad_astra:ostrum_fluid_pipe>);
Jei.hideIngredient(<item:ad_astra:cable_duct>);
Jei.hideIngredient(<item:ad_astra:desh_cable>);
Jei.hideIngredient(<item:ad_astra:steel_cable>);
Jei.hideIngredient(<item:ad_astra:compressor>);
Jei.hideIngredient(<item:ad_astra:fuel_refinery>);
Jei.hideIngredient(<item:ad_astra:fuel_bucket>);
Jei.hideIngredient(<item:ad_astra:wheel>);

//createbb oxygen_bucket was replaced with one from ad astra
Jei.hideIngredient(<item:createbb:oxygen_bucket>);
Jei.hideIngredient(<fluid:createbb:oxygen>);
Jei.hideIngredient(<item:ad_astra:tier_1_rover>);

//hide tinkers steel
Jei.hideIngredient(<item:tconstruct:molten_steel_bucket>);
Jei.hideIngredient(<fluid:tconstruct:molten_steel>);

//ad astra engine
Jei.hideIngredient(<item:ad_astra:steel_engine>);
Jei.hideIngredient(<item:ad_astra:desh_engine>);
Jei.hideIngredient(<item:ad_astra:ostrum_engine>);
Jei.hideIngredient(<item:ad_astra:calorite_engine>);

Jei.addIngredient(<item:ad_astra:steel_engine>.withTag({display: {Name: "{\"text\":\"Nether Engine\",\"italic\":false,\"color\":\"red\"}"},}));
Jei.addIngredient(<item:ad_astra:desh_engine>.withTag({display: {Name: "{\"text\":\"Nether Engine Mk.2\",\"italic\":false,\"color\":\"red\"}"},}));
Jei.addIngredient(<item:ad_astra:ostrum_engine>.withTag({display: {Name: "{\"text\":\"Nether Engine Mk.3\",\"italic\":false,\"color\":\"red\"}"},}));
Jei.addIngredient(<item:ad_astra:calorite_engine>.withTag({display: {Name: "{\"text\":\"Nether Engine Mk.4\",\"italic\":false,\"color\":\"red\"}"},}));

//nether core

Jei.hideIngredient(<item:ad_astra:engine_frame>);
Jei.addIngredient(<item:ad_astra:engine_frame>.withTag({display: {Name: "{\"text\":\"Nether Core\",\"italic\":false,\"color\":\"gray\"}"},}));
//meth
Jei.hideIngredient(<item:createbb:white_meth_tray>);
Jei.hideIngredient(<item:createbb:blue_meth_tray>);
Jei.hideIngredient(<item:createbb:white_meth>);
Jei.hideIngredient(<item:createbb:blue_meth>);
Jei.addIngredient(<item:createbb:white_meth_tray>.withTag({display: {Name: "{\"text\":\"White Meth Tray\",\"italic\":false}"},}));
Jei.addIngredient(<item:createbb:blue_meth_tray>.withTag({display: {Name: "{\"text\":\"Blue Meth Tray\",\"italic\":false,\"color\":\"aqua\"}"},}));
Jei.addIngredient(<item:createbb:white_meth>.withTag({display: {Name: "{\"text\":\"White Meth\",\"italic\":false}"},}));
Jei.addIngredient(<item:createbb:blue_meth>.withTag({display: {Name: "{\"text\":\"Blue Meth\",\"italic\":false,\"color\":\"aqua\"}"},}));


//create
Jei.hideIngredient(<item:create_dd:deforester_saw>);
