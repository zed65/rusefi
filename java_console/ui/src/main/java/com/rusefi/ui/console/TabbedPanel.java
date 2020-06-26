package com.rusefi.ui.console;

import com.rusefi.PaneSettings;
import com.rusefi.config.generated.Fields;
import com.rusefi.core.MessagesCentral;
import com.rusefi.io.ConnectionStatusLogic;
import com.rusefi.ui.FuelTunePane;
import com.rusefi.ui.LogDownloader;
import com.rusefi.ui.UIContext;

import javax.swing.*;
import java.awt.*;

import static com.rusefi.ui.storage.PersistentConfiguration.getConfig;

public class TabbedPanel {
    // todo: the logic around 'criticalError' could be implemented nicer
    private String criticalError;


//    public final RomEditorPane romEditorPane;
    public final SettingsTab settingsTab;
    public final LogDownloader logsManager = new LogDownloader();
    public final FuelTunePane fuelTunePane;
    public final PaneSettings paneSettings = new PaneSettings(getConfig().getRoot().getChild("panes"));

    public final JTabbedPane tabbedPane = new JTabbedPane() {
        @Override
        public void paint(Graphics g) {
            super.paint(g);
            paintStatusText(g);
        }

        private void paintStatusText(Graphics g) {
            Font f = g.getFont();
            g.setFont(new Font(f.getName(), f.getStyle(), f.getSize() * 4));
            Dimension d = getSize();
            String text;
            switch (ConnectionStatusLogic.INSTANCE.getValue()) {
                case NOT_CONNECTED:
                    text = "Not connected";
                    break;
                case LOADING:
                    text = "Loading";
                    break;
                default:
                    text = "";
            }
            if (criticalError != null) {
                text = criticalError;
                g.setColor(Color.red);
            }
            int labelWidth = g.getFontMetrics().stringWidth(text);
            g.drawString(text, (d.width - labelWidth) / 2, d.height / 2);
        }
    };

    public TabbedPanel(UIContext uiContext) {
        MessagesCentral.getInstance().addListener((clazz, message) -> {
            if (message.startsWith(Fields.CRITICAL_PREFIX))
                criticalError = message;
        });
        fuelTunePane = new FuelTunePane(uiContext, getConfig().getRoot().getChild("fueltune"));
//        romEditorPane = new RomEditorPane(uiContext);
        settingsTab = new SettingsTab(uiContext);
    }

    public void addTab(String title, Component component) {
        tabbedPane.addTab(title, component);
    }
}
