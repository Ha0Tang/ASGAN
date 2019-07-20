FILE=$1

if [[ $FILE != "CUFS" && $FILE != "CUFSF" && $FILE != "EPRIP" && $FILE != "PRIPVSGC" ]]; 
	then echo "Available datasets are CUFS, CUFSF, EPRIP, PRIPVSGC"
	exit 1
fi


echo "Specified [$FILE]"

URL=http://disi.unitn.it/~hao.tang/uploads/datasets/ASGAN/$FILE.tar.gz
TAR_FILE=./AFPS/$FILE.tar.gz
TARGET_DIR=./AFPS/$FILE/
wget -N $URL -O $TAR_FILE
mkdir -p $TARGET_DIR
tar -zxvf $TAR_FILE -C ./AFPS/
rm $TAR_FILE