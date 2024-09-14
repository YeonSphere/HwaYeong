// @ts-check
import { execSync } from "child_process";

const PACKAGE_NAME = process.env.DISCORD_PACKAGE_NAME ?? "com.discord";
const MAIN_ACTIVITY = "com.discord.main.MainActivity";

/**
 * Get the package name of the Discord app.
 * @returns {string} The package name.
 */
export function getPackageName() {
    return PACKAGE_NAME;
}

/**
 * Check if ADB is available and the app is installed.
 * @returns {boolean} True if ADB is available and the app is installed, false otherwise.
 */
export function isADBAvailableAndAppInstalled() {
    try {
        const out = execSync(`adb shell pm list packages ${PACKAGE_NAME}`);
        return out.toString().trim() === `package:${PACKAGE_NAME}`;
    } catch {
        return false;
    }
}

/**
 * Restart the app using ADB.
 * @param {number} [reversePort] - Optional port number for reverse port forwarding.
 */
export async function restartAppFromADB(reversePort) {
    if (typeof reversePort === "number") {
        execSync(`adb reverse tcp:${reversePort} tcp:${reversePort}`);
    }

    await forceStopAppFromADB();
    execSync(`adb shell am start ${PACKAGE_NAME}/${MAIN_ACTIVITY}`);
}

/**
 * Force stop the app using ADB.
 */
export function forceStopAppFromADB() {
    execSync(`adb shell am force-stop ${PACKAGE_NAME}`);
}
