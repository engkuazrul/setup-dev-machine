$extensions =
      "andys8.jest-snippets",
      "apollographql.vscode-apollo",
      "austincummings.razor-plus",
      "bobsparadox.seti-black"
      "BriteSnow.vscode-toggle-quotes",
      "christian-kohler.npm-intellisense",
      "christian-kohler.path-intellisense",
      "CoenraadS.bracket-pair-colorizer",
      "dbaeumer.vscode-eslint",
      "dsznajder.es7-react-js-snippets",
      "esbenp.prettier-vscode",
      "formulahendry.auto-close-tag",
      "formulahendry.auto-rename-tag",
      "fosshaas.fontsize-shortcuts",
      "ginfuru.ginfuru-onedark-raincoat-theme",
      "HookyQR.beautify",
      "JCsoftIA.jcsoftia",
      "johnpapa.vscode-cloak",
      "MehediDracula.php-namespace-resolver",
      "mikestead.dotenv",
      "naumovs.color-highlight",
      "Nimda.deepdark-material",
      "Nur.just-black",
      "octref.vetur",
      "onecentlin.laravel-blade",
      "Orta.vscode-jest",
      "patbenatar.advanced-new-file",
      "PKief.material-icon-theme",
      "ritwickdey.LiveServer",
      "shufo.vscode-blade-formatter",
      "SmukkeKim.theme-setimonokai",
      "streetsidesoftware.code-spell-checker",
      "styled-components.vscode-styled-components",
      "vscode-icons-team.vscode-icons",
      "WallabyJs.quokka-vscode",
      "WallabyJs.wallaby-vscode",
      "whatwedo.twig",
      "Zignd.html-css-class-completion"

$cmd = "code --list-extensions"
Invoke-Expression $cmd -OutVariable output | Out-Null
$installed = $output -split "\s"

foreach ($ext in $extensions) {
    if ($installed.Contains($ext)) {
        Write-Host $ext "already installed." -ForegroundColor Gray
    } else {
        Write-Host "Installing" $ext "..." -ForegroundColor White
        code --install-extension $ext
    }
}
