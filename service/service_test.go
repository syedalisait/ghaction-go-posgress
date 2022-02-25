package service_test

import (
	"testing"

	"github.com/syedalisait/ghaction-go-postgress/service"
)

func TestAdd(t *testing.T) {
	tcs := []struct {
		a, b, expected int
	}{
		{0, 0, 0},
		{0, 1, 1},
		{1, 0, 1},
		{1, 1, 2},
	}

	for _, tc := range tcs {
		actual := service.Add(tc.a, tc.b)
		if actual != tc.expected {
			t.Errorf("Add(%d, %d) returned %d, expected %d", tc.a, tc.b, actual, tc.expected)
		}
	}
}

func TestSubtract(t *testing.T) {
	tcs := []struct {
		a, b, expected int
	}{
		{0, 0, 0},
		{0, 1, -1},
		{1, 0, 1},
		{1, 1, 0},
	}

	for _, tc := range tcs {
		actual := service.Subtract(tc.a, tc.b)
		if actual != tc.expected {
			t.Errorf("Subtract(%d, %d) returned %d, expected %d", tc.a, tc.b, actual, tc.expected)
		}
	}
}
