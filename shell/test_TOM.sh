# Delete the previous result of GMM
rm -r data/test/warp-cloth
rm -r data/test/warp-mask

# Copy the result of GMM
cp -r result/GMM/test/warp-cloth data/test/
cp -r result/GMM/test/warp-mask data/test/

python test.py \
--name TOM \
--stage TOM \
--workers 0 \
--datamode test \
--data_list test_pairs.txt \
--checkpoint checkpoints/TOM/tom_final.pth