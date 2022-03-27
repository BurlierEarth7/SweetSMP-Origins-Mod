package ca.burlier.sweet;

import net.fabricmc.api.ModInitializer;
import net.fabricmc.fabric.api.item.v1.FabricItemSettings;
import net.minecraft.entity.effect.StatusEffectInstance;
import net.minecraft.entity.effect.StatusEffects;
import net.minecraft.item.FoodComponent;
import net.minecraft.item.Item;
import net.minecraft.item.ItemGroup;
import net.minecraft.util.Identifier;
import net.minecraft.util.Rarity;
import net.minecraft.util.registry.Registry;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class SweetSMPMod implements ModInitializer {
	// This logger is used to write text to the console and the log file.
	// It is considered best practice to use your mod id as the logger's name.
	// That way, it's clear which mod wrote info, warnings, and errors.
	public static final Logger LOGGER = LoggerFactory.getLogger("modid");

	//Items
	public static final Item STAMINA_BOOSTER = new Item(new FabricItemSettings().group(ItemGroup.MISC).maxCount(16).rarity(Rarity.RARE));

	//Meme Things
	public static final Item LEAN = new Item(new FabricItemSettings().group(ItemGroup.FOOD).maxCount(1).rarity(Rarity.EPIC).food(new FoodComponent.Builder().hunger(100).saturationModifier(100f).statusEffect(new StatusEffectInstance(StatusEffects.REGENERATION, 1, 25), 1).snack().build()));

	@Override
	public void onInitialize() {
		// This code runs as soon as Minecraft is in a mod-load-ready state.
		// However, some things (like resources) may still be uninitialized.
		// Proceed with mild caution.

		//Register Items
		Registry.register(Registry.ITEM, new Identifier("sweet", "stamina_booster"), STAMINA_BOOSTER);

		//Register Memes
		Registry.register(Registry.ITEM, new Identifier("sweet", "lean"), LEAN);

		LOGGER.info("SweetSMP Origins Loaded!");
	}

}
