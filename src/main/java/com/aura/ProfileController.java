package com.aura;

import javafx.fxml.FXML;
import javafx.scene.control.TextField;
import javafx.scene.control.Button;

public class ProfileController {
    @FXML
    private TextField nameField;
    @FXML
    private TextField emailField;
    @FXML
    private Button btnSave;

    @FXML
    private void initialize() {
        // load existing user data (mock)
        nameField.setText("Usuario Ejemplo");
        emailField.setText("usuario@ejemplo.com");
    }

    @FXML
    private void onSave() {
        // simple validation and mock save
        System.out.println("Guardando perfil: " + nameField.getText() + ", " + emailField.getText());
    }
}
