# stupid script to strip metadata from a bunch of jpgs

counter=0
conversion_dir="~/converted_images"

function convert_jpgs ()
{
    while read jpg; do
        counter=$[$counter+1]
        echo "On file number: $counter, file: $jpg" 
        convert +profile 8bim +profile xmp $jpg $jpg
    done
}
        
find . -name "*.jpg" | convert_jpgs 
