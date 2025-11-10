def is_vanilla() -> bool:
    import sys

    return not hasattr(__builtins__, "__IPYTHON__") and "bpython" not in sys.argv[0]


def setup_history():
    import os
    import atexit
    import readline
    from pathlib import Path

    histfile = Path(os.getenv("XDG_STATE_HOME", Path.home() / ".cache")) / "python_history"

    try:
        histfile.parent.mkdir(parents=True, exist_ok=True)
        histfile.touch(exist_ok=True)
    except FileNotFoundError:  # Probably the parent directory doesn't exist
        pass

    print(f"HISTFILE: {histfile}")
    if histfile.exists():
        readline.read_history_file(str(histfile))

    atexit.register(readline.write_history_file, str(histfile))  # execute write_history_file while call `exit()`


if is_vanilla():
    setup_history()
