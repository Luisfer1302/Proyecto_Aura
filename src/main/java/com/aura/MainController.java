package com.aura;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.Pane;
import javafx.scene.layout.StackPane;
import javafx.event.ActionEvent;
import java.io.IOException;

public class MainController {
    @FXML
    private StackPane contentPane;

    @FXML
    private Label sectionTitle;

    @FXML
    private void initialize() {
        // set default view
        loadSection("home.fxml", "Bienvenido a Proyecto Aura");
    }

    @FXML
    private void onNavButtonClick(ActionEvent event) {
        Object src = event.getSource();
        if (src instanceof Button) {
            String id = ((Button) src).getId();
            switch (id) {
                case "btnHome":
                    loadSection("home.fxml", "Pantalla de inicio");
                    break;
                case "btnProfile":
                    loadSection("profile.fxml", "Perfil de usuario");
                    break;
                case "btnSettings":
                    loadSection("settings.fxml", "Ajustes de la aplicación");
                    break;
            }
        }
    }

    private void loadSection(String fxmlFile, String title) {
        try {
            Pane pane = FXMLLoader.load(getClass().getResource("/com/aura/" + fxmlFile));
            contentPane.getChildren().setAll(pane);
            sectionTitle.setText(title);
        } catch (IOException e) {
            e.printStackTrace();
            sectionTitle.setText("Error cargando " + title);
        }
    }
}
