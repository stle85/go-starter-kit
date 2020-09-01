package utils

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestGreet(t *testing.T) {
	assert.Equal(t, "Hello World!", Greet())
}
