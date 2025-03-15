def is_vanilla() -> bool:
    import sys

    return not hasattr(__builtins__, "__IPYTHON__") and "bpython" not in sys.argv[0]


def setup_history():
    import os
    import atexit
    import readline
    from pathlib import Path

    histfile = (
        Path(os.getenv("XDG_STATE_HOME", Path.home() / ".cache")) / "python_history"
    )

    try:
        histfile.touch(exist_ok=True)
    except FileNotFoundError:  # Probably the parent directory doesn't exist
        histfile.parent.mkdir(parents=True, exist_ok=True)

    print(f"Using history file: {histfile}")
    readline.read_history_file(str(histfile))
    atexit.register(readline.write_history_file, str(histfile))


if is_vanilla():
    setup_history()
