# Kubectl Functions
# ---
#
alias k="kubectl"
alias h="helm"

kn() {
    if [ "$1" != "" ]; then
	kubectl config set-context --current --namespace=$1
        echo -e "\e[1;32m⚓ Namespace set to $1\e[0m" 
    else
	echo -e "\e[1;31m❗Error, please provide a valid Namespace\e[0m"
    fi
}

knd() {
    kubectl config set-context --current --namespace=default
    echo -e "\e[1;32m⚓ Namespace set to Default\e[0m"
}

ku() {
    kubectl config unset current-context
    echo -e "\e[1;32m⚓ unset kubernetes current-context\e[0m"
}