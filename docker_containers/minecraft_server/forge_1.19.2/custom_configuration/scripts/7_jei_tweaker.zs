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

//createbb oxygen_bucket was replaced with one from ad astra
Jei.hideIngredient(<item:createbb:oxygen_bucket>);
Jei.hideIngredient(<fluid:createbb:oxygen>);
Jei.hideIngredient(<item:ad_astra:tier_1_rover>);
