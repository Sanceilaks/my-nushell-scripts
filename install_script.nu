
def "url parse filename" [] {  # -> string
    url parse | get path | path parse | update parent "" | path join
}

def install-script [url: string] {
    let file_name = $url | url parse filename
    let scripts_dir = $nu.config-path | path dirname | path join scripts
    mkdir $scripts_dir

    let path = $scripts_dir | path join $file_name

    http get --raw $url | save -f $path

    $"\nsource ($path)" | save $nu.config-path --append
}