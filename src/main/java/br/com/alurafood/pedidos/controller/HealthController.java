package br.com.alurafood.pedidos.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthController {
    @GetMapping
    public ResponseEntity<?> healthcheck() {
        return ResponseEntity.ok().build();
    }
}
