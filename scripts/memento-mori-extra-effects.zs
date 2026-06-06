import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.potions.IPotion;

global MORI_DAMAGE_TAKEN_MULTIPLIER as double = 2.0;
global MORI_DAMAGE_DEALT_MULTIPLIER as double = 0.25;
global MORI_POTION_EFFECT as IPotion = <potion:corpsecomplex:mori>;

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
    
    // 1. HANDLE PLAYER TAKING INCREASED DAMAGE
    // Check if the victim is a player
    if (event.entityLivingBase instanceof IPlayer) {
        var player as IPlayer = event.entityLivingBase;
        
        // Check if the player has the Memento Mori debuff active
        if (player.isPotionActive(MORI_POTION_EFFECT)) {
            event.amount = event.amount * MORI_DAMAGE_TAKEN_MULTIPLIER;
        }
    }
    
    // 2. HANDLE PLAYER DEALING REDUCED DAMAGE
    // Check if the damage source is valid, has a true source (attacker), and that attacker is a player
    if (!isNull(event.damageSource) && !isNull(event.damageSource.trueSource) && (event.damageSource.trueSource instanceof IPlayer)) {
        var attacker as IPlayer = event.damageSource.trueSource;
        
        // Check if the attacker has the Memento Mori debuff active
        if (attacker.isPotionActive(MORI_POTION_EFFECT)) {
            event.amount = event.amount * MORI_DAMAGE_DEALT_MULTIPLIER;
        }
    }
});