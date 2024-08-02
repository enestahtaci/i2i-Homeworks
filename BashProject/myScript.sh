#!/bin/bash
# Kullanıcıdan işlem türünü al
echo "Hangi işlemi yapmak istersiniz?"
echo "+ (toplama)"
echo "- (çıkarma)"
echo "* (çarpma)"
echo "/ (bölme)"
echo "% (modül)"
echo "! (faktöriyel)"
read -p "İşlem türünü girin: " operation

# İşlem türüne göre kullanıcıdan gerekli sayıları al
if [[ "$operation" == "!" ]]; then
    read -p "Faktöriyelini hesaplamak istediğiniz sayıyı girin: " num
    if [[ $num -lt 0 ]]; then
        echo "Negatif sayılar için faktöriyel hesaplanamaz."
        exit 1
    fi
    factorial=1
    for ((i=1; i<=num; i++)); do
        factorial=$((factorial * i))
    done
    echo "$num! = $factorial"
else
    read -p "Birinci sayıyı girin: " num1
    read -p "İkinci sayıyı girin: " num2
    case "$operation" in
        +) result=$((num1 + num2)) ;;
        -) result=$((num1 - num2)) ;;
        \*) result=$((num1 * num2)) ;;
        /) 
            if [[ $num2 -eq 0 ]]; then
                echo "Bölme hatası: sıfıra bölme yapılamaz."
                exit 1
            fi
            result=$((num1 / num2)) 
            ;;
        %) result=$((num1 % num2)) ;;
        *) echo "Geçersiz işlem türü"; exit 1 ;;
    esac
    echo "Sonuç: $result"
fi

