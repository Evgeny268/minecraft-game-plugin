package org.example.uplagin;

import org.bukkit.Bukkit;
import org.bukkit.plugin.java.JavaPlugin;
import org.example.emitter.EventEmitter;
import org.example.emitter.models.TextEvent;

public class UltimatePlugin extends JavaPlugin {
    @Override
    public void onEnable() {
        super.onEnable();
        EventEmitter.on("test-event", (Object event) -> {
            if (event instanceof TextEvent) {
                var textEvent = (TextEvent) event;
                Bukkit.broadcastMessage("Got from spring: " + textEvent.getText());
            }
        });
    }
}
