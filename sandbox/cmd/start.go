package cmd

import (
	"fmt"

	"github.com/spf13/cobra"
)

func init() {
	rootCmd.AddCommand(startCmd)
}

var startCmd = &cobra.Command{
	Use:   "start",
	Short: "Start sandbox enviroment",
	Run: func(cmd *cobra.Command, args []string) {
		fmt.Println("Now starting the sandbox enviroment.Please wait...")
	},
}