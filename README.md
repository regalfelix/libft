# libft

A personal C standard-library replacement built for 42, meant to be reused as the starting point for future 42 C projects.

## What's included

- `libft/` — the library itself: string, memory, list, `printf`, and `get_next_line` implementations, built into `libft.a`
- `sources/` + `headers/` — a minimal starter project (`placeholder`) that links against `libft.a`, meant to be renamed and built on for a new project

## Using it as a project template

```bash
git clone https://github.com/regalfelix/libft.git my_new_project
cd my_new_project
make
./placeholder
```

From there, rename `placeholder` (in the Makefile) and `placeholder.h`, drop your own `.c` files into `sources/`, and add them to the `SOURCES` line in the Makefile.

## License

This project is licensed under the [MIT License](LICENSE)
