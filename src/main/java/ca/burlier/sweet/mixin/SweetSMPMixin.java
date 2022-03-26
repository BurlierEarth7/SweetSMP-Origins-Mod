package ca.burlier.sweet.mixin;

import ca.burlier.sweet.SweetSMPMod;
import net.minecraft.client.gui.screen.TitleScreen;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(TitleScreen.class)
public class SweetSMPMixin {
	@Inject(at = @At("HEAD"), method = "init()V")
	private void init(CallbackInfo info) {
		SweetSMPMod.LOGGER.info("SweetSMP mixin loaded! hope you have fun :)");
	}
}
