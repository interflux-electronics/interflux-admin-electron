import { app, BrowserWindow } from "electron";
import env from "env";

export const appMenuTemplate = {
  label: "App",
  submenu: [
    {
      label: "Reload",
      accelerator: "CmdOrCtrl+R",
      click: () => {
        BrowserWindow.getFocusedWindow().webContents.reloadIgnoringCache();
      }
    },
    {
      label: "Debug",
      accelerator: "Alt+CmdOrCtrl+I",
      click: () => {
        BrowserWindow.getFocusedWindow().toggleDevTools();
      }
    },
    {
      label: "Quit",
      accelerator: "CmdOrCtrl+Q",
      click: () => {
        app.quit();
      }
    },
    { type: "separator" },
    {
      label: `v${app.getVersion()} ${env.name}`,
      enabled: false
    }
  ]
};
