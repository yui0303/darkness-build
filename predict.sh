rm -rf ./gen/*.jpg
rm -rf ./predictions/*.jpg

./darknet detector test \
        ./custom_data/coins.data \
        ./custom_data/coin_fast.cfg \
        ./custom_data/coin_fast_final.weights \
