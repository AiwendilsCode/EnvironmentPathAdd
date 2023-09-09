$numOfArgs = $($args.count)

echo "Adding $($numOfArgs) paths"

for ( $i = 0; $i -lt $numOfArgs; $i++ ) 
{
    echo $args[$i]

    $newPath = $env:Path + ';' + $args[$i]
    [Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")
    $env:Path = $newPath

}