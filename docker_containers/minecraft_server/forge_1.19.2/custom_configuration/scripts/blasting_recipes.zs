import crafttweaker.api.recipe.BlastFurnaceRecipeManager;
// -----------------------------------------------------------
// B L A S T   F U R N A C E
// -----------------------------------------------------------
// BlastFurnaceRecipeManager.addRecipe(name as string, output as IItemStack, input as IIngredient, xp as float, cookTime as int)
//ash
blastFurnace.addRecipe("bonemeal_to_ash", <item:supplementaries:ash>, <item:minecraft:bone_meal>, 0.1, 50);
blastFurnace.addRecipe("rotten_flesh_to_ash", <item:supplementaries:ash>, <item:minecraft:rotten_flesh>, 0.1, 200);
blastFurnace.addRecipe("any_meat_to_ash", <item:supplementaries:ash>, <tag:items:forge:meat>, 0.1, 200);
blastFurnace.addRecipe("any_sappling_to_ash", <item:supplementaries:ash>, <tag:items:minecraft:saplings>, 0.1, 100);
blastFurnace.addRecipe("spider_eye_to_ash", <item:supplementaries:ash>, <item:minecraft:spider_eye>, 0.1, 200);
blastFurnace.addRecipe("eye_to_ash", <item:supplementaries:ash>, <item:butchercraft:eyeball>, 0.1, 200);
blastFurnace.addRecipe("cooked_eye_to_ash", <item:supplementaries:ash>, <item:butchercraft:cooked_eyeball>, 0.1, 100);
//twilight
blastFurnace.addRecipe("fiery_ingot_into_blaze_powder", <item:minecraft:blaze_powder>*25, <item:twilightforest:fiery_ingot>, 0.1, 1000);
blastFurnace.addRecipe("knightmetal_from_ironwood", <item:twilightforest:armor_shard>, <item:twilightforest:ironwood_block>, 0.1, 500);

//steel_scrap
blastFurnace.addRecipe("steel_scrap_from_knightmetal", <item:createbigcannons:steel_scrap>*3, <item:twilightforest:knightmetal_ingot>, 0.1, 400);
blastFurnace.addRecipe("steel_scrap_from_black_steel", <item:createbigcannons:steel_scrap>*3, <item:cataclysm:black_steel_ingot>, 0.1, 400);
//serpent scales to neptunium
blastFurnace.addRecipe("sea_serpent_scales_to_neptunium1", <item:aquaculture:neptunium_nugget>, <item:iceandfire:sea_serpent_scale_block_green>, 0.1, 1000);
blastFurnace.addRecipe("sea_serpent_scales_to_neptunium2", <item:aquaculture:neptunium_nugget>, <item:iceandfire:sea_serpent_scale_block_deepblue>, 0.1, 1000);
blastFurnace.addRecipe("sea_serpent_scales_to_neptunium3", <item:aquaculture:neptunium_nugget>, <item:iceandfire:sea_serpent_scale_block_teal>, 0.1, 1000);
blastFurnace.addRecipe("sea_serpent_scales_to_neptunium4", <item:aquaculture:neptunium_nugget>, <item:iceandfire:sea_serpent_scale_block_bronze>, 0.1, 1000);
blastFurnace.addRecipe("sea_serpent_scales_to_neptunium5", <item:aquaculture:neptunium_nugget>, <item:iceandfire:sea_serpent_scale_block_red>, 0.1, 1000);
blastFurnace.addRecipe("sea_serpent_scales_to_neptunium6", <item:aquaculture:neptunium_nugget>, <item:iceandfire:sea_serpent_scale_block_purple>, 0.1, 1000);
blastFurnace.addRecipe("sea_serpent_scales_to_neptunium7", <item:aquaculture:neptunium_nugget>, <item:iceandfire:sea_serpent_scale_block_blue>, 0.1, 1000);
//salt back into block
blastFurnace.addRecipe("salt_into_rock_salt", <item:salt:raw_rock_salt_block>, <item:salt:salt_block>, 0.1, 200);
