param($name, $2, $3)
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

write-host $name + ":" + $2 + ":" + $3

}
function createFolder {
    $pName = $name
    if($3){
        $pName = $3
    }
    mkdir $pName
    gitHandling
}

if($2){
    if($2 -Like "https://*.*.*"){
        $url = $2
        if($3){
            createFolder
        }
        createFolder
        break
    }
    if($2 -Like "https://*.*"){
        $url = $2
        if($3){
            createFolder
        }
        createFolder
        break
    }
    #mkdir $2
    break
}
createFolder