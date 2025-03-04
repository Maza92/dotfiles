import os
import ignis
from ignis.utils import Utils


MATERIAL_CACHE_DIR = f"{ignis.CACHE_DIR}/material"  # type: ignore

TEMPLATES = Utils.get_current_dir() + "/templates"
SAMPLE_WALL = Utils.get_current_dir() + "/sample_wall.png"


# Config for not include

DIRECT_CONFIG_TARGETS = {
    "foot.ini": {
        "config_dir": "~/.config/foot/",
        "output_name": "foot.ini",
        "reload_cmd": "pkill -SIGUSR1 foot",
        "strip_hash": True
    },
    "userContent.css": {
        "config_dir": "~/.mozilla/firefox/gogq4gdc.default-nightly/chrome/",
        "output_name": "userContent.css",
        "reload_cmd": "pkill -SIGUSR1 firefox",
        "strip_hash": False
    }
}

os.makedirs(MATERIAL_CACHE_DIR, exist_ok=True)
