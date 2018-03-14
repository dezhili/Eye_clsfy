TRAIN_PATH=/home/users/dawei.yang/zhaoxu.li/DMS-T-Eye/mxnet/
#the scripts  path to train
DATA_PATH=/opt/hdfs/user/dawei.yang/zhaoxu.li
#DATA_PATH=/home/users/dawei.yang/zhaoxu.li/mxnet_eye/eycls_scrip/data/1109_data
#the train & test path for train
OUTPUT_PATH=/home/users/dawei.yang/zhaoxu.li/DMS-T-Eye/example/output
#the log&model  output path

#choose a net type to train
NET_Type=bn_ec.py
#NET_Type=Gap_ec.py

cd  $TRAIN_PATH
pwd
python $NET_Type  $DATA_PATH  $OUTPUT_PATH  2>&1  |tee $OUTPUT_PATH/example.log

