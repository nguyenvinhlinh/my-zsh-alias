function qrencode_text() {
    text="$1"
    qrencode -t ansiutf8 $text
}
