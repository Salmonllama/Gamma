package bot

import "github.com/Salmonllama/gourd"

func Login() {
	gamma := gourd.New("token-here", "my-discord-id-here", ":=")
	gamma.AddKeyword("my-discord-id", "admin")
}

func InitModules() {

}
