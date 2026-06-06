import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.potions.IPotion;

// ============================================================================
// CONFIGURATION (Change these values to fit your modpack)
// ============================================================================

// The exact potion handler for your Inhibited effect
static INHIBITED_POTION as IPotion = <potion:inhibited:inhibited>;

// List of block IDs that players shouldn't open while Inhibited
static BLOCKED_CHESTS as string[] = [
    "minecraft:chest",
    "minecraft:trapped_chest"
    // Easily expand your configuration list down here:
    // "ironchest:iron_chest",
    // "storagenetwork:storage_krate"
];

// Message displayed to the player when they try to open a container
static WARNING_MESSAGE as string = "You are inhibited! Blocked from opening containers while in combat.";

// ============================================================================
// LOGIC (Do not change unless modifying functionality)
// ============================================================================

events.onPlayerInteractBlock(function(event as crafttweaker.event.PlayerInteractBlockEvent) {
    // Stop early if running on client side
    if (event.world.isRemote()) {
        return;
    }

    var player = event.player;

    // Check if the player is currently under the configured potion effect
    if (player.isPotionActive(INHIBITED_POTION)) {
        var block = event.world.getBlock(event.position);
        
        // Match block id against our top-level configuration array
        for chestId in BLOCKED_CHESTS {
            if (block.definition.id == chestId) {
                // Cancel the event explicitly
                event.cancel();
                
                // Show action bar warning text to player
                player.sendStatusMessage(WARNING_MESSAGE, true);
                return;
            }
        }
    }
});