param($name, $2)
# functions
function gitHandling {
    if($url){
        cd $name
        git init
        git remote add origin
        git branch -M main
        break
    }
    cd $pName
    start https://repo.new
}
function createFolder {
    $pName = $name
    mkdir $pName
    gitHandling
}

if($2){
    if($2 -Like "https://*.*.*"){
        $url = $2
        createFolder
        break
    }
    if($2 -Like "https://*.*"){
        $url = $2
        createFolder
        break
    }
    break
}
createFolder