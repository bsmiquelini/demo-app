#!/bin/sh


if [ "$ENABLE_BUTTON" = "true" ]; then
    BUTTON="<button onclick='buttonAction()'>Botão habilitado!</button>"
else
    BUTTON=""
fi
VALUES_CONTENT=$(cat /usr/share/nginx/html/charts/dev/values.yaml | grep -v '#' | sed 's/$/\\n/' | tr -d '\n')


sed -e "s/{{BACKGROUND_COLOR}}/${BACKGROUND_COLOR}/" \
    -e "s/{{MENSAGEM}}/${MENSAGEM}/" \
    -e "s|{{BUTTON}}|${BUTTON}|" \
    -e "s|{{VALUES_CONTENT}}|${VALUES_CONTENT}|" \
    /index.html.template > /usr/share/nginx/html/index.html


echo "[+] Subindo a aplicação"
echo " - cor: $BACKGROUND_COLOR"
echo " - toggle: $ENABLE_BUTTON"
echo " - msg: $MENSAGEM"
nginx -g 'daemon off;'
