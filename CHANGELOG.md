# Changelog

## v0.13.0

- Changed parsing of node paths to a list of `/`-separated segments instead of a single node.
    - This fixes parsing of node paths with unit addresses in the middle, e.g. `<&/foo@1/bar@2>`.
- Fixed parsing of property names to allow `?` characters.
- Added support for non-standard label names that Zephyr allows.
    - The devicetree specification states that node names must start with an upper or lowercase letter, but Zephyr's parser does not enforce this.

## v0.12.1

- Updated to tree-sitter v0.24.3.

## v0.11.1

- Added support for unit addresses in `/delete-node/`.
- Added support for top-level `/delte-node` statements.
- Added `.dtso` and `.its` file extensions.

## v0.10.1

- Improved unit address parsing.

## v0.9.0

- Changed labels to be a node field instead of a separate node type.
- Added support for `#undef`.
- Fixed parsing of `/include/` statements.
- Improved unit address parsing.

## v0.8.0

- Added `name` property to `/delete-node/` and `/delete-property/`.
- Added support for preprocessor commands inside nodes.

## v0.7.1

- Updated to tree-sitter v0.20.8.

## v0.6.0

- Updated to tree-sitter v0.20.7
- `property` node's `value` field no longer includes the `=` token.
- Added support for more devicetree features:
    - `/plugin/`
    - `/omit-if-no-ref/`
    - `/bits/`
    - `/incbin/`

## v0.5.0

- Updated to tree-sitter v0.20.6

## v0.4.0

- Updated to tree-sitter v0.19.4

## v0.3.0

- Fixed commas not being allowed in node addresses.

## v0.2.0

- Fixed references not being allowed as node names.

## v0.1.0

- Initial release
