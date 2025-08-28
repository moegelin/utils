# utils

## Apps
- maccy (clipboard Manager) - https://drive.google.com/open?id=1IXzUL2mB4lN4IV7_5adfZ0_thy2ARk1f&usp=drive_fs
- iTerm2 (zsh)
    - oh-my-zsh
    - power10k
    - zsh-autosuggestions
- Amazon Q - formerly known as Fig (auto completion on zsh)
- Alfred 5
- Rectangle
- Meeting Bar & Itsycal
- Charmstone
- Xnip
- Dozer (Menu Bar) or Bartender (pay)
- Insomnia
  - insominia-plugin-path-parameters   
- Gifski
- Time Out (dejal.com - lotus_mud@gmx.de)

## Aliases
```
alias code="subl"
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh/oh-my-zsh.sh"
alias ssh-wn24="ssh -F ~/.ssh/weltn24/config"
alias convertToMP4='(){ffmpeg -i $1 $(echo $1 | cut -d"." -f1).mp4}'
alias myrush="rush update && rush install && rush build"
alias ecs="aws ssm get-parameter --name "/frontend/api.ecs.proxy.basic_password" --with-decryption | jq -r .Parameter.Value | tee >(pbcopy)"
alias ls="ls -G -g"
```

## IntelliJ

#### Plugins
- Codeium
- Conventional Commits
- GitToolbox
- Key Promoter X
- String Manipulation

#### Live Templates
- scss
```@use "../../../../shared/styles/common" as c;

/* ===================================================
Component: $cmp$
=================================================== */

/* ---------------------------------------------------
Global Styles
--------------------------------------------------- */
@mixin create-$cmpName$() {
.c-$cmpName$ {
$END$
}
}
```
- us `const [$PARAM$, set$PARAM2$] = useState($END$);`
- uef `useEffect(()=>{$END$}, [$PARAM$]);`
- props `const { $2$$END$ } = $1$;`
- fn `const $NAME$ = ($PARAM$) => {  $END$  };`
- log `console.log('##$TEXT2$', $TEXT$);`
- err `console.error('$END$');`

###Scopes

Include: `file[<project>]:*/`  
Exclude: `!file:*/dist//*`  
Connect Rules: `$<ruleName>&&!file:test//*`

#### Examples
- BFF: `file[1up-bff]:*/&&!file:*/dist//*&&!file:*/.rush//*&&!file:*/coverage//*&&!file:*/stats.html&&!file:.eslintcache&&!file:*.log&&!file:*.tsbuildinfo&&!file:dev-tools/configurator*/&&!file:common*/&&!file:*/.mangony//*&&!file:*/.rollup.cache//*&&!file:*/junit.xml`
- BFF All src: `$BFF&&!file:*/__tests__//*.spec.*&&!file:libs/types//*&&!file:*.md&&!file:*.json`
- BFF All tests: `file:*/__tests__//*.ts`
- BFF Configurator: `file[1up-bff]:dev-tools/configurator/*/`
- BFF archive: `$BFF&&file[1up-bff]:apps/archive//*`
- BFF author: `$BFF&&file[1up-bff]:apps/author//*`
- BFF section: `$BFF&&file[1up-bff]:apps/section//*`
- BFF documentation: `$BFF&&file[1up-bff]:apps/documentation//*`

- Funkotron: file:*/&&!file:*.js&&!file:*.tsbuildinfo&&!file:target//*&&!file:*/dist//*&&!file:*.css
- Funkoton w/o tests: $Funkotron&&!file:test//*&&!file:*.spec*


## Git

### Reorder commits
`git rebase -i HEAD~3`  
3 is the number of commits reordered. Opens editor where the oldest commits are on top.  
--> Reorder lines, save and exit.

###Squash two non-consecutive commits
`git rebase --interactive HEAD~4`

Change the order like you wish and write __squash/fixup__ to the commits you want to merge together.


