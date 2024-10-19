package tree_sitter_devicetree_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_devicetree "github.com/joelspadin/tree-sitter-devicetree/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_devicetree.Language())
	if language == nil {
		t.Errorf("Error loading Devicetree grammar")
	}
}
