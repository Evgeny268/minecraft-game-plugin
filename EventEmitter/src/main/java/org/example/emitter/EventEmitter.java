package org.example.emitter;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.ArrayList;
import java.util.function.Consumer;

public class EventEmitter {
    private static final Map<String, List<Consumer<Object>>> events = new HashMap<>();

    public static void on(final String name, final Consumer<Object> listener) {
        List<Consumer<Object>> listeners = Optional.ofNullable(events.get(name))
                .orElseGet(ArrayList::new);
        listeners.add(listener);
        events.put(name, listeners);
    }

    public static void emit(final String name, final Object data) {
        Optional.ofNullable(events.get(name))
                .ifPresent((listeners) -> listeners
                        .forEach((listener) -> listener.accept(data)));
    }

    public static boolean remove(final String name, final Consumer<Object> listener) {
        return Optional.ofNullable(events.get(name))
                .map((listeners) -> listeners.remove(listener))
                .orElse(false);
    }

    public static boolean removeAll(final String name) {
        return events.remove(name) != null;
    }
}
