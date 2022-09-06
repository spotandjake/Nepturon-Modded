### Solar Panels ###
recipes.removeByRecipeName("gregtech:solar_panel_lv");
recipes.addShaped("gregtech:solar_panel_lv", <gregtech:meta_item_1:333>, [[<gregtech:meta_item_1:371>, <gregtech:transparent_casing>, <gregtech:meta_item_1:371>], [<ore:circuitHv>, <gregtech:wire_hex:2517>, <ore:circuitHv>], [<gregtech:meta_plate_double:323>, null, <gregtech:meta_plate_double:323>]]);
recipes.removeByRecipeName("gregtech:solar_panel_mv");
recipes.addShaped("gregtech:solar_panel_mv", <gregtech:meta_item_1:333>, [[<gregtech:meta_item_1:371>, <gregtech:transparent_casing>, <gregtech:meta_item_1:371>], [<ore:circuitHv>, <gregtech:wire_hex:2517>, <ore:circuitHv>], [<gregtech:meta_plate_double:323>, null, <gregtech:meta_plate_double:323>]]);

// Vacuum Tube * 1
<recipemap:pressure_chamber_recipes>.findRecipe(16, [<metaitem:component.glass.tube>, <metaitem:vacuum_tube.components>, <metaitem:ringKovar>], null).remove();
