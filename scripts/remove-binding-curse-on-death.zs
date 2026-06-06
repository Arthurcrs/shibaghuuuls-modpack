import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.data.IData;

events.onPlayerRespawn(function(event as PlayerRespawnEvent) {
    val player = event.player;
    if (player.world.isRemote()) return;

    val slots as IEntityEquipmentSlot[] = [
        IEntityEquipmentSlot.head(),
        IEntityEquipmentSlot.chest(),
        IEntityEquipmentSlot.legs(),
        IEntityEquipmentSlot.feet()
    ];

    for i in 0 .. slots.length {
        val slot = slots[i];
        val item = player.getItemInSlot(slot);
        
        if (!isNull(item) && item.hasTag) {
            val tag = item.tag;
            
            if (!isNull(tag.memberGet("ench"))) {
                # Cast the IData list into a ZenScript array
                val enchList = tag.memberGet("ench").asList();
                var hasBinding = false;
                
                var arr = [] as IData[];
                
                # Iterate using standard bracket indexing
                for j in 0 .. enchList.length {
                    val ench = enchList[j];
                    
                    if (!isNull(ench.memberGet("id")) && ench.memberGet("id").asInt() == 10) {
                        hasBinding = true;
                    } else {
                        arr += ench;
                    }
                }

                if (hasBinding) {
                    var baseTag = tag - "ench";
                    
                    if (arr.length > 0) {
                        player.setItemToSlot(slot, item.withTag(baseTag + {ench: arr} as IData));
                    } else {
                        player.setItemToSlot(slot, item.withTag(baseTag));
                    }
                }
            }
        }
    }
});