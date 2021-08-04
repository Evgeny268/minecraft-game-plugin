package com.example.demo;

import org.bukkit.Bukkit;
import org.example.emitter.EventEmitter;
import org.example.emitter.models.TextEvent;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {
    @GetMapping("/main")
    public String main(@RequestParam String message) {
        Bukkit.broadcastMessage("SUPREME");
        EventEmitter.emit("test-event", new TextEvent(message));
        return "Greetings from Spring Boot! " + message;
    }
}
