from pathlib import Path
import logging

logging.basicConfig(level = logging.INFO, format="%(asctime)s | %(levelname)s | %(message)s")

log = logging.getLogger(__file__)



nas_mount_path=Path("/Volumes/mehays")

# nas_home = run(args=f"ls", cwd=nas_mount_path)

# print(nas_home)
Path().glob()

def walk(path:Path):
    items = []
    for item in path.iterdir():
        if item.is_file():
            log.info(f"Found file | {item}")
            items.append(item.name)
        if item.is_dir():
            log.info(f"Found dir | {item.name}")
            items.extend(walk(item.resolve()))
    log.info(f"Found {items.__len__()} files")
    return items

log.info("he")
files = walk(Path("/Users/mehays/Documents/GitHub/labur/tests"))
log.info(f"Total files found | {files.__len__()}")